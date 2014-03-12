 
part of social_blogging; 
 
// lib/social/blogging/model.dart 
 
class BloggingModel extends BloggingEntries { 
 
  BloggingModel(Model model) : super(model); 
 
  fromJsonToBlogEntry() { 
    fromJsonToEntry(socialBloggingBlogEntry); 
  } 
 
  fromJsonToModel() { 
    fromJson(socialBloggingModel); 
  } 
 
  fromMap(Map<String, Object> entriesMap) { 
    Map<String, Object> blogEntryMap = entriesMap["Blog"]; 
    fromMapToEntry(blogEntryMap); 
  } 
 
  init() { 
    initBlogs(); 
  } 
 
  initBlogs() { 
    var blog1 = new Blog(blogs.concept); 
    blog1.link = Uri.parse("http://updates.html5rocks.com/2013/11/The-Yeoman-Monthly-Digest-1"); 
    blog1.name = "salad"; 
    blogs.add(blog1); 
 
    var blog1posts1 = new Post(blog1.posts.concept); 
    blog1posts1.title = "election"; 
    blog1posts1.content = "email"; 
    blog1posts1.creationDate = new DateTime.now(); 
    blog1posts1.blog = blog1; 
    blog1.posts.add(blog1posts1); 
 
    var blog1posts2 = new Post(blog1.posts.concept); 
    blog1posts2.title = "craving"; 
    blog1posts2.content = "concern"; 
    blog1posts2.creationDate = new DateTime.now(); 
    blog1posts2.blog = blog1; 
    blog1.posts.add(blog1posts2); 
 
    var blog2 = new Blog(blogs.concept); 
    blog2.link = Uri.parse("http://blog.dynamicprogrammer.com/2012/09/01/first-steps-with-dart.html"); 
    blog2.name = "head"; 
    blogs.add(blog2); 
 
    var blog2posts1 = new Post(blog2.posts.concept); 
    blog2posts1.title = "cinema"; 
    blog2posts1.content = "agreement"; 
    blog2posts1.creationDate = new DateTime.now(); 
    blog2posts1.blog = blog2; 
    blog2.posts.add(blog2posts1); 
 
    var blog2posts2 = new Post(blog2.posts.concept); 
    blog2posts2.title = "season"; 
    blog2posts2.content = "finger"; 
    blog2posts2.creationDate = new DateTime.now(); 
    blog2posts2.blog = blog2; 
    blog2.posts.add(blog2posts2); 
 
    var blog3 = new Blog(blogs.concept); 
    blog3.link = Uri.parse("https://nest.com/"); 
    blog3.name = "seed"; 
    blogs.add(blog3); 
 
    var blog3posts1 = new Post(blog3.posts.concept); 
    blog3posts1.title = "truck"; 
    blog3posts1.content = "kids"; 
    blog3posts1.creationDate = new DateTime.now(); 
    blog3posts1.blog = blog3; 
    blog3.posts.add(blog3posts1); 
 
    var blog3posts2 = new Post(blog3.posts.concept); 
    blog3posts2.title = "wheat"; 
    blog3posts2.content = "instruction"; 
    blog3posts2.creationDate = new DateTime.now(); 
    blog3posts2.blog = blog3; 
    blog3.posts.add(blog3posts2); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
