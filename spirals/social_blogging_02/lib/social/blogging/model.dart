 
part of social_blogging; 
 
// lib/social/blogging/model.dart 
 
class BloggingModel extends BloggingEntries { 
 
  BloggingModel(Model model) : super(model); 
 
  fromJsonToBlogEntry() { 
    fromJson(socialBloggingBlogEntry); 
  } 
 
  fromJsonToUserEntry() { 
    fromJson(socialBloggingUserEntry); 
  } 
 
  Map<String, String> fromModelToJson() { 
    var jsonEntries = new Map<String, String>(); 
    jsonEntries["Blog"] = toJson("Blog"); 
    jsonEntries["User"] = toJson("User"); 
    return jsonEntries; 
  } 
 
  fromJsonToModel(Map<String, String> jsonEntries) { 
    String userEntry = jsonEntries["User"]; 
    fromJson(userEntry); 
    String blogEntry = jsonEntries["Blog"]; 
    fromJson(blogEntry); 
  } 
 
  init() { 
    initUsers(); 
    initBlogs(); 
  } 
 
  initBlogs() { 
    var blogConcept = blogs.concept; 
 
    var blog1 = new Blog(blogConcept); 
    blog1.link = Uri.parse("https://github.com/languages/Dart"); 
    blog1.name = "camping"; 
    var blog1User = users.random(); 
    blog1.user = blog1User; 
    blog1User.blogs.add(blog1); 
    blogs.add(blog1); 
 
    var postConcept = blog1.posts.concept; 
 
    var blog1post1 = new Post(postConcept); 
    blog1post1.title = "rice"; 
    blog1post1.content = "guest"; 
    blog1post1.creationDate = new DateTime.now(); 
    blog1post1.blog = blog1; 
    blog1.posts.add(blog1post1); 
 
    var blog1post2 = new Post(postConcept); 
    blog1post2.title = "center"; 
    blog1post2.content = "test"; 
    blog1post2.creationDate = new DateTime.now(); 
    blog1post2.blog = blog1; 
    blog1.posts.add(blog1post2); 
 
    var blog2 = new Blog(blogConcept); 
    blog2.link = Uri.parse("http://code.google.com/p/dart-enumerators/"); 
    blog2.name = "redo"; 
    var blog2User = users.random(); 
    blog2.user = blog2User; 
    blog2User.blogs.add(blog2); 
    blogs.add(blog2); 
 
    var blog2post1 = new Post(postConcept); 
    blog2post1.title = "call"; 
    blog2post1.content = "debt"; 
    blog2post1.creationDate = new DateTime.now(); 
    blog2post1.blog = blog2; 
    blog2.posts.add(blog2post1); 
 
    var blog2post2 = new Post(postConcept); 
    blog2post2.title = "explanation"; 
    blog2post2.content = "hell"; 
    blog2post2.creationDate = new DateTime.now(); 
    blog2post2.blog = blog2; 
    blog2.posts.add(blog2post2); 
 
    var blog3 = new Blog(blogConcept); 
    blog3.link = Uri.parse("http://jsonformatter.curiousconcept.com/"); 
    blog3.name = "cream"; 
    var blog3User = users.random(); 
    blog3.user = blog3User; 
    blog3User.blogs.add(blog3); 
    blogs.add(blog3); 
 
    var blog3post1 = new Post(postConcept); 
    blog3post1.title = "ticket"; 
    blog3post1.content = "hospital"; 
    blog3post1.creationDate = new DateTime.now(); 
    blog3post1.blog = blog3; 
    blog3.posts.add(blog3post1); 
 
    var blog3post2 = new Post(postConcept); 
    blog3post2.title = "tape"; 
    blog3post2.content = "cardboard"; 
    blog3post2.creationDate = new DateTime.now(); 
    blog3post2.blog = blog3; 
    blog3.posts.add(blog3post2); 
 
  } 
 
  initUsers() { 
    var userConcept = users.concept; 
 
    var user1 = new User(userConcept); 
    user1.name = "park"; 
    user1.password = "down"; 
    user1.email = "brian@white.com"; 
    users.add(user1); 
 
    var user2 = new User(userConcept); 
    user2.name = "beans"; 
    user2.password = "water"; 
    user2.email = "andrea@wong.com"; 
    users.add(user2); 
 
    var user3 = new User(userConcept); 
    user3.name = "tension"; 
    user3.password = "center"; 
    user3.email = "richard@jones.com"; 
    users.add(user3); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
