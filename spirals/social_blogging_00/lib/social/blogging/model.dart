 
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
    blog1.link = Uri.parse("http://www.dartlang.org/articles/dart-unit-tests/"); 
    blog1.name = "present"; 
    blogs.add(blog1); 
 
    var blog2 = new Blog(blogConcept); 
    blog2.link = Uri.parse("http://www.villa-marrakech.ma/"); 
    blog2.name = "time"; 
    blogs.add(blog2); 
 
    var blog3 = new Blog(blogConcept); 
    blog3.link = Uri.parse("http://code.google.com/p/dart/issues/list"); 
    blog3.name = "Dart issues"; 
    blogs.add(blog3); 
 
  } 
 
 
} 
 
