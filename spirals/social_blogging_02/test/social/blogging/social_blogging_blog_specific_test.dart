 
// test/social/blogging/social_blogging_blog_specific_test.dart 
 
import "package:test/test.dart"; 
//import "package:dartling/dartling.dart"; 
import "package:social_blogging/social_blogging.dart"; 
 
testSocialBloggingBlog(
    Repository repository, String domainCode, String modelCode) {
  SocialDomain domain; 
  var session; 
  BloggingModel model; 
  group("Testing Social.Blogging.Blog", () { 
    setUp(() { 
      domain = repository.getDomainModels(domainCode); 
      session = domain.newSession(); 
      model = domain.getModelEntries(modelCode); 
      model.init();
    }); 
    tearDown(() { 
      model.clear();
    }); 
    
    test('From model to JSON', () {
      var modelInJson = model.toJson();  
      expect(modelInJson, isNotNull);

      //print(modelInJson);
      //model.display();
    });  
    
    test('From JSON to model', () { 
      var users = model.users;
      var usersCount = users.length;
      print('users count: ${usersCount}');
      var blogs = model.blogs;
      var blogsCount = blogs.length;
      print('blogs count: ${blogsCount}');
      var userBlogsCount = new Map<User, int>();
      for (var user in users) {
        userBlogsCount[user] = user.blogs.length;
      }
      for (var blog in blogs) {
        expect(blog.user, isNotNull);
      }
      Map<String, Object> modelMap = model.toJsonMap();
      print(modelMap);
      
      model.clear();
      expect(model.isEmpty, isTrue);   
      model.fromJsonMap(modelMap);
      expect(model.isEmpty, isFalse);
      expect(users.isEmpty, isFalse);
      expect(users.length, equals(usersCount));
      expect(blogs.isEmpty, isFalse);
      expect(blogs.length, equals(blogsCount));   
      model.display();
      for (var user in users) {
        expect(userBlogsCount[user], equals(user.blogs.length));
        for (var blog in user.blogs) {
          expect(blog.user, equals(user));
        }
        var userBlogs = blogs.selectWhereParent('user', user);
        for (var blog in userBlogs) {
          expect(blog.user, equals(user));
        }
      }     
      for (var blog in blogs) {
        expect(blog.user, isNotNull);
        var user = users.singleWhereOid(blog.user.oid);
        expect(blog.user, equals(user));
        var userBlog = user.blogs.singleWhereOid(blog.oid);
        expect(blog, equals(userBlog));
      }     
      users.display(title: 'From JSON to model users');
      blogs.display(title: 'From JSON to model blogs');
    }); 
 
    test('From JSON to model entry error', () {
      var users = model.users;
      var blogs = model.blogs;
      var blogsJson = model.fromEntryToJson('Blog');
      var usersJson = model.fromEntryToJson('User');
      
      users.clear();
      blogs.clear();
      expect(() => model.fromJson(blogsJson), throws);
      model.fromJsonToEntry(usersJson);
      
      blogs.display(title: 'From JSON to Blog entry');
      users.display(title: 'From JSON to User entry');      
    });
    
    test('Update blog id with success', () {
      Blogs blogs = model.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;
      var randomBlog = blogs.random();
      var blogLink = randomBlog.link;
      var blog = blogs.singleWhereAttributeId('link', blogLink);
      expect(blog, isNotNull);

      var beforeLinkUpdate = blog.link;
      expect(() => blog.link = blogLink, throws);
      expect(blog.link, equals(beforeLinkUpdate));
      
      blogs.display(title:'Before update blog id', withChildren:false);

      var afterUpdateBlog = blog.copy();
      var linkAttribute = blog.concept.attributes.singleWhereCode('link');
      expect(linkAttribute.update, isFalse);
      linkAttribute.update = true;
      var newLink = Uri.parse('http://blog.bitmakerlabs.com/');
      afterUpdateBlog.link = newLink;
      expect(afterUpdateBlog.link, equals(newLink));
      linkAttribute.update = false;
      var updated = blogs.update(blog, afterUpdateBlog);
      expect(updated, isTrue);

      blogs.display(title: 'After update blog id', withChildren: false);

      var drBlog = blogs.singleWhereAttributeId('link', newLink);
      expect(drBlog, isNotNull);
      expect(drBlog.link, equals(newLink));
    });
    
    test('Update blog name with failure', () {
      Blogs blogs = model.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;
      var randomBlog = blogs.random();
      var blogLink = randomBlog.link;
      var blog = blogs.singleWhereAttributeId('link', blogLink);
      expect(blog, isNotNull);
      
      var afterUpdateBlog = blog.copy();
      var nameAttribute = blog.concept.attributes.singleWhereCode('name');
      expect(nameAttribute.update, isTrue);
      var newName = 'Dzenan Ridjanovic';
      afterUpdateBlog.name = newName;
      expect(afterUpdateBlog.name, equals(newName));
      // Blogs.update can only be used if oid, code or id set.
      expect(() => blogs.update(blog, afterUpdateBlog), throws);
    });
    
  }); 
} 
 
void main() { 
  testSocialBloggingBlog(new Repository(), "Social", "Blogging"); 
}  
 
