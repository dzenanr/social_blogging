 
part of social_blogging; 
 
// lib/social/blogging/model.dart 
 
class BloggingModel extends BloggingEntries { 
 
  BloggingModel(Model model) : super(model); 
 
  fromJsonToBlogEntry() { 
    fromJsonToEntry(socialBloggingBlogEntry); 
  } 
 
  fromJsonToUserEntry() { 
    fromJsonToEntry(socialBloggingUserEntry); 
  } 
 
  fromJsonToModel() { 
    fromJson(socialBloggingModel); 
  } 
 
  init() { 
    initUsers(); 
    initBlogs(); 
  } 
 
  initBlogs() { 
    var blog1 = new Blog(blogs.concept); 
    blog1.link = Uri.parse("http://www.indiegogo.com/projects/angel-the-first-open-sensor-for-health-and-fitness"); 
    blog1.name = "hell"; 
    var blog1User = users.random(); 
    blog1.user = blog1User; 
    blogs.add(blog1); 
    blog1User.blogs.add(blog1); 
 
    var blog1posts1 = new Post(blog1.posts.concept); 
    blog1posts1.title = "meter"; 
    blog1posts1.content = "sailing"; 
    blog1posts1.creationDate = new DateTime.now(); 
    blog1posts1.blog = blog1; 
    blog1.posts.add(blog1posts1); 
 
    var blog1posts2 = new Post(blog1.posts.concept); 
    blog1posts2.title = "meter"; 
    blog1posts2.content = "family"; 
    blog1posts2.creationDate = new DateTime.now(); 
    blog1posts2.blog = blog1; 
    blog1.posts.add(blog1posts2); 
 
    var blog2 = new Blog(blogs.concept); 
    blog2.link = Uri.parse("http://jsonformatter.curiousconcept.com/"); 
    blog2.name = "camping"; 
    var blog2User = users.random(); 
    blog2.user = blog2User; 
    blogs.add(blog2); 
    blog2User.blogs.add(blog2); 
 
    var blog2posts1 = new Post(blog2.posts.concept); 
    blog2posts1.title = "autobus"; 
    blog2posts1.content = "down"; 
    blog2posts1.creationDate = new DateTime.now(); 
    blog2posts1.blog = blog2; 
    blog2.posts.add(blog2posts1); 
 
    var blog2posts2 = new Post(blog2.posts.concept); 
    blog2posts2.title = "judge"; 
    blog2posts2.content = "chairman"; 
    blog2posts2.creationDate = new DateTime.now(); 
    blog2posts2.blog = blog2; 
    blog2.posts.add(blog2posts2); 
 
    var blog3 = new Blog(blogs.concept); 
    blog3.link = Uri.parse("http://stackoverflow.com/tags/dart"); 
    blog3.name = "picture"; 
    var blog3User = users.random(); 
    blog3.user = blog3User; 
    blogs.add(blog3); 
    blog3User.blogs.add(blog3); 
 
    var blog3posts1 = new Post(blog3.posts.concept); 
    blog3posts1.title = "craving"; 
    blog3posts1.content = "holiday"; 
    blog3posts1.creationDate = new DateTime.now(); 
    blog3posts1.blog = blog3; 
    blog3.posts.add(blog3posts1); 
 
    var blog3posts2 = new Post(blog3.posts.concept); 
    blog3posts2.title = "cable"; 
    blog3posts2.content = "television"; 
    blog3posts2.creationDate = new DateTime.now(); 
    blog3posts2.blog = blog3; 
    blog3.posts.add(blog3posts2); 
 
  } 
 
  initUsers() { 
    var user1 = new User(users.concept); 
    user1.name = "head"; 
    user1.password = "season"; 
    user1.email = "jeff@jackson.com"; 
    users.add(user1); 
 
    var user2 = new User(users.concept); 
    user2.name = "meter"; 
    user2.password = "cinema"; 
    user2.email = "cindy@nguyen.com"; 
    users.add(user2); 
 
    var user3 = new User(users.concept); 
    user3.name = "grading"; 
    user3.password = "feeling"; 
    user3.email = "angela@adams.com"; 
    users.add(user3); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
