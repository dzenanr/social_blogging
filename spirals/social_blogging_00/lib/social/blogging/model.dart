 
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
    blog1.link = Uri.parse("https://assemblymade.com/hello"); 
    blog1.name = "restaurant"; 
    blogs.add(blog1); 
 
    var blog2 = new Blog(blogs.concept); 
    blog2.link = Uri.parse("http://pub.dartlang.org/packages/neuquant"); 
    blog2.name = "city"; 
    blogs.add(blog2); 
 
    var blog3 = new Blog(blogs.concept); 
    blog3.link = Uri.parse("http://aralbalkan.com/notes/responsive-pixels/"); 
    blog3.name = "crisis"; 
    blogs.add(blog3); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
