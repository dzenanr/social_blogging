 
// test/social/blogging/social_blogging_blog_test.dart 
 
import "package:unittest/unittest.dart"; 
//import "package:dartling/dartling.dart"; 
import "package:social_blogging/social_blogging.dart"; 
 
testSocialBloggingBlog( 
    Repository repository, String domainCode, String modelCode) { 
  var domain; 
  var session; 
  var model; 
  var blogs; 
  group("Testing Social.Blogging.Blog", () { 
    domain = repository.getDomainModels(domainCode); 
    session = domain.newSession(); 
    model = domain.getModelEntries(modelCode); 
    expect(model, isNotNull); 
    blogs = model.blogs; 
    expect(blogs.isEmpty, isTrue); 
    setUp(() { 
      model.init(); 
    }); 
    tearDown(() { 
      model.clear(); 
    }); 
 
    test("Not empty model", () { 
      expect(model.isEmpty, isFalse); 
      expect(blogs.isEmpty, isFalse); 
    }); 
 
    test("Empty model", () { 
      model.clear(); 
      expect(model.isEmpty, isTrue); 
      expect(blogs.isEmpty, isTrue); 
    }); 
 
    test("From model entry to JSON", () { 
      var json = model.fromEntryToJson("Blog"); 
      expect(json, isNotNull); 
 
      print(json); 
      //model.displayEntryJson("Blog"); 
      //model.displayJson(); 
      //model.display(); 
    }); 
 
    test("From JSON to model entry", () { 
      var json = model.fromEntryToJson("Blog"); 
      blogs.clear(); 
      expect(blogs.isEmpty, isTrue); 
      model.fromJsonToEntry(json); 
      expect(blogs.isEmpty, isFalse); 
 
      blogs.display(title: "From JSON to model entry"); 
    }); 
 
    test("Add blog required error", () { 
      var blogConcept = blogs.concept; 
      var blogCount = blogs.length; 
      var blog = new Blog(blogConcept); 
      var added = blogs.add(blog); 
      expect(added, isFalse); 
      expect(blogs.length, equals(blogCount)); 
      expect(blogs.errors.length, greaterThan(0)); 
      expect(blogs.errors.toList()[0].category, equals("required")); 
 
      blogs.errors.display(title: "Add blog required error"); 
    }); 
 
    test("Add blog unique error", () { 
      var blogConcept = blogs.concept; 
      var blogCount = blogs.length; 
      var blog = new Blog(blogConcept); 
      var randomBlog = blogs.random(); 
      blog.link = randomBlog.link; 
      var added = blogs.add(blog); 
      expect(added, isFalse); 
      expect(blogs.length, equals(blogCount)); 
      expect(blogs.errors.length, greaterThan(0)); 
 
      blogs.errors.display(title: "Add blog unique error"); 
    }); 
 
    test("Find blog by name", () { 
      var randomBlog = blogs.random(); 
      var blogName = randomBlog.name; 
      Blog blog = blogs.firstWhereAttribute("name", blogName); 
      expect(blog, isNotNull); 
    }); 
 
    test("Select blogs by name", () { 
      var randomBlog = blogs.random(); 
      var blogName = randomBlog.name; 
      var selectedBlogs = blogs.selectWhereAttribute("name", blogName); 
      expect(selectedBlogs.isEmpty, isFalse); 
 
      //selectedBlogs.display(title: "Select blogs by name"); 
    }); 
 
    test("Sort blogs", () { 
      blogs.sort(); 
 
      //blogs.display(title: "Sort blogs"); 
    }); 
 
    test("Order blogs", () { 
      var orderedBlogs = blogs.order(); 
      expect(orderedBlogs.isEmpty, isFalse); 
      expect(orderedBlogs.length, equals(blogs.length)); 
      expect(orderedBlogs.source.isEmpty, isFalse); 
      expect(orderedBlogs.source.length, equals(blogs.length)); 
      expect(orderedBlogs, isNot(same(blogs))); 
 
      //orderedBlogs.display(title: "Order blogs"); 
    }); 
 
    test("Copy blogs", () { 
      var copiedBlogs = blogs.copy(); 
      expect(copiedBlogs.isEmpty, isFalse); 
      expect(copiedBlogs.length, equals(blogs.length)); 
      expect(copiedBlogs, isNot(same(blogs))); 
      copiedBlogs.forEach((e) => 
        expect(e, equals(blogs.singleWhereOid(e.oid)))); 
      copiedBlogs.forEach((e) => 
        expect(e, isNot(same(blogs.singleWhereId(e.id))))); 
 
      //copiedBlogs.display(title: "Copy blogs"); 
    }); 
 
    test("True for every blog", () { 
      expect(blogs.every((e) => e.name != null), isTrue); 
    }); 
 
    test("Random blog", () { 
      var blog1 = blogs.random(); 
      expect(blog1, isNotNull); 
      var blog2 = blogs.random(); 
      expect(blog2, isNotNull); 
 
      //blog1.display(prefix: "random1"); 
      //blog2.display(prefix: "random2"); 
    }); 
 
  }); 
} 
 
void main() { 
  testSocialBloggingBlog(new Repository(), "Social", "Blogging"); 
} 
 
