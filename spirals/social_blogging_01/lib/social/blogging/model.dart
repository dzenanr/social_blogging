 
part of social_blogging; 
 
// lib/social/blogging/model.dart 
 
class BloggingModel extends BloggingEntries { 
 
  BloggingModel(Model model) : super(model); 
 
  fromJsonToBlogEntry() { 
    fromJson(socialBloggingBlogEntry); 
  } 
 
  Map<String, String> fromModelToJson() { 
    var jsonEntries = new Map<String, String>(); 
    jsonEntries["Blog"] = toJson("Blog"); 
    return jsonEntries; 
  } 
 
  fromJsonToModel(Map<String, String> jsonEntries) { 
    String blogEntry = jsonEntries["Blog"]; 
    fromJson(blogEntry); 
  } 
 
  
  init() { 
    // =============================== 
    // Blog entry      
    // =============================== 
    var blogConcept = blogs.concept; 
 
    var blog1 = new Blog(blogConcept); 
    blog1.link = Uri.parse("http://www.dartlang.org/slides/2012/06/io12/Bullseye-Your-first-Dart-app-Codelab-GoogleIO2012.pdf"); 
    blog1.name = "hall"; 
    blogs.add(blog1); 
 
    var postConcept = blog1.posts.concept; 
 
    var blog1post1 = new Post(postConcept); 
    blog1post1.title = "account"; 
    blog1post1.content = "privacy"; 
    blog1post1.creationDate = new DateTime.now(); 
    blog1post1.blog = blog1; 
    blog1.posts.add(blog1post1); 
 
    var blog1post2 = new Post(postConcept); 
    blog1post2.title = "job"; 
    blog1post2.content = "employer"; 
    blog1post2.creationDate = new DateTime.now(); 
    blog1post2.blog = blog1; 
    blog1.posts.add(blog1post2); 
 
    var blog2 = new Blog(blogConcept); 
    blog2.link = Uri.parse("http://stackoverflow.com/tags/dart"); 
    blog2.name = "Dart questions"; 
    blogs.add(blog2); 
 
    var blog2post1 = new Post(postConcept); 
    blog2post1.title = "guest"; 
    blog2post1.content = "message"; 
    blog2post1.creationDate = new DateTime.now(); 
    blog2post1.blog = blog2; 
    blog2.posts.add(blog2post1); 
 
    var blog2post2 = new Post(postConcept); 
    blog2post2.title = "notch"; 
    blog2post2.content = "text"; 
    blog2post2.creationDate = new DateTime.now(); 
    blog2post2.blog = blog2; 
    blog2.posts.add(blog2post2); 
 
    var blog3 = new Blog(blogConcept); 
    blog3.link = Uri.parse("http://www.dartlang.org/"); 
    blog3.name = "point"; 
    blogs.add(blog3); 
 
    var blog3post1 = new Post(postConcept); 
    blog3post1.title = "undo"; 
    blog3post1.content = "vessel"; 
    blog3post1.creationDate = new DateTime.now(); 
    blog3post1.blog = blog3; 
    blog3.posts.add(blog3post1); 
 
    var blog3post2 = new Post(postConcept); 
    blog3post2.title = "plate"; 
    blog3post2.content = "hot"; 
    blog3post2.creationDate = new DateTime.now(); 
    blog3post2.blog = blog3; 
    blog3.posts.add(blog3post2); 
 
  } 
 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
