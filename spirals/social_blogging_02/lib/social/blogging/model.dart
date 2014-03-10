 
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
 
  fromMap(Map<String, Object> entriesMap) { 
    Map<String, Object> userEntryMap = entriesMap["User"]; 
    fromMapToEntry(userEntryMap); 
    Map<String, Object> blogEntryMap = entriesMap["Blog"]; 
    fromMapToEntry(blogEntryMap); 
  } 
 
  init() { 
    initUsers(); 
    initBlogs(); 
  } 

  /*
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
  */
 
  // added after code gen - begin 

  initUsers() {
    var userConcept = users.concept;
      
    var user01 = new User(userConcept);
    user01.name = 'ridjanod';
    user01.password = 'tro3ka';
    user01.email = 'ridjanod@gmail.com';
    users.add(user01);
    
    var user02 = new User(userConcept);
    user02.name = 'richard.griffith';
    user02.password = 'petestro3ka';
    user02.email = 'richard.griffith@gmail.com';
    users.add(user02);
    
    var user03 = new User(userConcept);
    user03.name = 'seth.ladd';
    user03.password = 'sedmic2ka';
    user03.email = 'seth.ladd@gmail.com';
    users.add(user03);
  }

  initBlogs() {
    var blogConcept = blogs.concept;

    var user01 = users.singleWhereAttributeId('name', 'richard.griffith');
    var blog01 = new Blog(blogConcept);
    blog01.link = Uri.parse('http://www.scribegriff.com/studios/');
    blog01.name = "scribeGriff Studios";
    blog01.user = user01;
    user01.blogs.add(blog01);
    blogs.add(blog01);

    var blog01Post01 = new Post(blog01.posts.concept);
    blog01Post01.title =
      "Today's @NgDirective: Get Up to Speed Using Angular with Dart";
    blog01Post01.content = """
  Although I spend most of my time working with Dart using Polymer, 
  it's hard not to find the announcement of AngularDart a compelling reason 
  to take it out for a spin. And I confess, the more I use Angular with Dart, 
  the more I'm convinced it is going to be a major component of my Dart 
  toolbox for the foreseeable future. I had come across Jesus Rodriguez's 
  introduction to the model driven framework with his appropriately named 
  blog post Why Does Angular.js Rock?. In this article, we look at the Dart 
  equivalents of the examples Jesus presented.
    """;
    blog01Post01.blog = blog01;
    blog01.posts.add(blog01Post01);

    var blog01Post02 = new Post(blog01.posts.concept);
    blog01Post02.title =
      "Iterables, Futures, and Future.wait() in Dart";
    blog01Post02.content = """
  Several days ago while working with Dart, I was coding up a problem that 
  required that I iterate over a function that returns its value represented 
  as a Future. The variables that I needed to pass to this function were read 
  from an external file and stored in a List using a Stream. To evaluate the 
  function for each element in the List, I was tempted to use a simple 
  forEach() to pass the elements to the function returning a Future. 
    """;
    blog01Post02.blog = blog01;
    blog01.posts.add(blog01Post02);

    var user02 = users.singleWhereAttributeId('name', 'seth.ladd');
    var blog02 = new Blog(blogConcept);
    blog02.link = Uri.parse('http://blog.sethladd.com/');
    blog02.name = "Seth Ladd's Blog";
    blog02.user = user02;
    user02.blogs.add(blog02);
    blogs.add(blog02);

    var blog02Post01 = new Post(blog02.posts.concept);
    blog02Post01.title =
      "Angular and Polymer Data Binding, Together!";
    blog02Post01.content = """
  Angular, a super heroic MVC framework, and Polymer, polyfills and 
  enhancements for custom elements built on top of Web Components, can 
  live harmoniously in the same app. This post shows you how to connect 
  Angular-controlled components to Polymer-controlled elements via data 
  binding. And we do it all in Dart.
    """;
    blog02Post01.blog = blog02;
    blog02.posts.add(blog02Post01);

    var user03 = users.singleWhereAttributeId('name', 'ridjanod');
    var blog03 = new Blog(blogConcept);
    blog03.link = Uri.parse('http://dzenanr.github.io/');
    blog03.name = "On Dart";
    blog03.user = user03;
    user03.blogs.add(blog03);
    blogs.add(blog03);
    
    var blog04 = new Blog(blogConcept);
    blog04.link = Uri.parse('http://ridjanod.github.io/');
    blog04.name = "How to Live on \$25 000";
    blog04.user = user03;
    user03.blogs.add(blog04);
    blogs.add(blog04);
    
    var blog04Post01 = new Post(blog04.posts.concept);
    blog04Post01.title = "Live Far Away Wherever You Are";
    blog04Post01.content = """
  If you live in a rich country, move to a country where people take time and 
  socialize. When you socialize, you have to eat and drink. And if you socialize
  a lot, the food and drinks cannot be that expensive.
    """;
    blog04Post01.blog = blog04;
    blog04.posts.add(blog04Post01);
  }
  
  // added after code gen - end 
 
} 
 
