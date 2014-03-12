 
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
 
  fromJsonToCategoryEntry() { 
    fromJsonToEntry(socialBloggingCategoryEntry); 
  } 
 
  fromJsonToModel() { 
    fromJson(socialBloggingModel); 
  } 
 
  fromMap(Map<String, Object> entriesMap) { 
    Map<String, Object> userEntryMap = entriesMap["User"]; 
    fromMapToEntry(userEntryMap); 
    Map<String, Object> categoryEntryMap = entriesMap["Category"]; 
    fromMapToEntry(categoryEntryMap); 
    Map<String, Object> blogEntryMap = entriesMap["Blog"]; 
    fromMapToEntry(blogEntryMap); 
  } 
 
  init() { 
    initUsers(); 
    initCategories(); 
    initBlogs(); 
  } 
 
  initBlogs() { 
    var blog1 = new Blog(blogs.concept); 
    blog1.link = Uri.parse("http://www.squarespace.com/stories/#hide-x-stitch"); 
    blog1.name = "teacher"; 
    var blog1User = users.random(); 
    blog1.user = blog1User; 
    blogs.add(blog1); 
    blog1User.blogs.add(blog1); 
 
    var blog1articles1 = new Article(blog1.articles.concept); 
    blog1articles1.title = "ocean"; 
    blog1articles1.content = "present"; 
    blog1articles1.creationDate = new DateTime.now(); 
    blog1articles1.blog = blog1; 
    blog1.articles.add(blog1articles1); 
 
    var blog1articles1tags1 = new Tag(blog1articles1.tags.concept); 
    var blog1articles1tags1Category = categories.random(); 
    blog1articles1tags1.category = blog1articles1tags1Category; 
    blog1articles1tags1.article = blog1articles1; 
    blog1articles1.tags.add(blog1articles1tags1); 
    blog1articles1tags1Category.tags.add(blog1articles1tags1); 
 
    var blog1articles1tags2 = new Tag(blog1articles1.tags.concept); 
    var blog1articles1tags2Category = categories.random(); 
    blog1articles1tags2.category = blog1articles1tags2Category; 
    blog1articles1tags2.article = blog1articles1; 
    blog1articles1.tags.add(blog1articles1tags2); 
    blog1articles1tags2Category.tags.add(blog1articles1tags2); 
 
    var blog1articles2 = new Article(blog1.articles.concept); 
    blog1articles2.title = "cash"; 
    blog1articles2.content = "baby"; 
    blog1articles2.creationDate = new DateTime.now(); 
    blog1articles2.blog = blog1; 
    blog1.articles.add(blog1articles2); 
 
    var blog1articles2tags1 = new Tag(blog1articles2.tags.concept); 
    var blog1articles2tags1Category = categories.random(); 
    blog1articles2tags1.category = blog1articles2tags1Category; 
    blog1articles2tags1.article = blog1articles2; 
    blog1articles2.tags.add(blog1articles2tags1); 
    blog1articles2tags1Category.tags.add(blog1articles2tags1); 
 
    var blog1articles2tags2 = new Tag(blog1articles2.tags.concept); 
    var blog1articles2tags2Category = categories.random(); 
    blog1articles2tags2.category = blog1articles2tags2Category; 
    blog1articles2tags2.article = blog1articles2; 
    blog1articles2.tags.add(blog1articles2tags2); 
    blog1articles2tags2Category.tags.add(blog1articles2tags2); 
 
    var blog2 = new Blog(blogs.concept); 
    blog2.link = Uri.parse("http://www.metro.us/newyork/news/2013/10/22/airbnb-a-huge-boost-to-citys-economy-study/"); 
    blog2.name = "universe"; 
    var blog2User = users.random(); 
    blog2.user = blog2User; 
    blogs.add(blog2); 
    blog2User.blogs.add(blog2); 
 
    var blog2articles1 = new Article(blog2.articles.concept); 
    blog2articles1.title = "measuremewnt"; 
    blog2articles1.content = "do"; 
    blog2articles1.creationDate = new DateTime.now(); 
    blog2articles1.blog = blog2; 
    blog2.articles.add(blog2articles1); 
 
    var blog2articles1tags1 = new Tag(blog2articles1.tags.concept); 
    var blog2articles1tags1Category = categories.random(); 
    blog2articles1tags1.category = blog2articles1tags1Category; 
    blog2articles1tags1.article = blog2articles1; 
    blog2articles1.tags.add(blog2articles1tags1); 
    blog2articles1tags1Category.tags.add(blog2articles1tags1); 
 
    var blog2articles1tags2 = new Tag(blog2articles1.tags.concept); 
    var blog2articles1tags2Category = categories.random(); 
    blog2articles1tags2.category = blog2articles1tags2Category; 
    blog2articles1tags2.article = blog2articles1; 
    blog2articles1.tags.add(blog2articles1tags2); 
    blog2articles1tags2Category.tags.add(blog2articles1tags2); 
 
    var blog2articles2 = new Article(blog2.articles.concept); 
    blog2articles2.title = "family"; 
    blog2articles2.content = "sailing"; 
    blog2articles2.creationDate = new DateTime.now(); 
    blog2articles2.blog = blog2; 
    blog2.articles.add(blog2articles2); 
 
    var blog2articles2tags1 = new Tag(blog2articles2.tags.concept); 
    var blog2articles2tags1Category = categories.random(); 
    blog2articles2tags1.category = blog2articles2tags1Category; 
    blog2articles2tags1.article = blog2articles2; 
    blog2articles2.tags.add(blog2articles2tags1); 
    blog2articles2tags1Category.tags.add(blog2articles2tags1); 
 
    var blog2articles2tags2 = new Tag(blog2articles2.tags.concept); 
    var blog2articles2tags2Category = categories.random(); 
    blog2articles2tags2.category = blog2articles2tags2Category; 
    blog2articles2tags2.article = blog2articles2; 
    blog2articles2.tags.add(blog2articles2tags2); 
    blog2articles2tags2Category.tags.add(blog2articles2tags2); 
 
    var blog3 = new Blog(blogs.concept); 
    blog3.link = Uri.parse("http://www.metro.us/newyork/news/2013/10/22/airbnb-a-huge-boost-to-citys-economy-study/"); 
    blog3.name = "test"; 
    var blog3User = users.random(); 
    blog3.user = blog3User; 
    blogs.add(blog3); 
    blog3User.blogs.add(blog3); 
 
    var blog3articles1 = new Article(blog3.articles.concept); 
    blog3articles1.title = "celebration"; 
    blog3articles1.content = "milk"; 
    blog3articles1.creationDate = new DateTime.now(); 
    blog3articles1.blog = blog3; 
    blog3.articles.add(blog3articles1); 
 
    var blog3articles1tags1 = new Tag(blog3articles1.tags.concept); 
    var blog3articles1tags1Category = categories.random(); 
    blog3articles1tags1.category = blog3articles1tags1Category; 
    blog3articles1tags1.article = blog3articles1; 
    blog3articles1.tags.add(blog3articles1tags1); 
    blog3articles1tags1Category.tags.add(blog3articles1tags1); 
 
    var blog3articles1tags2 = new Tag(blog3articles1.tags.concept); 
    var blog3articles1tags2Category = categories.random(); 
    blog3articles1tags2.category = blog3articles1tags2Category; 
    blog3articles1tags2.article = blog3articles1; 
    blog3articles1.tags.add(blog3articles1tags2); 
    blog3articles1tags2Category.tags.add(blog3articles1tags2); 
 
    var blog3articles2 = new Article(blog3.articles.concept); 
    blog3articles2.title = "concern"; 
    blog3articles2.content = "cloud"; 
    blog3articles2.creationDate = new DateTime.now(); 
    blog3articles2.blog = blog3; 
    blog3.articles.add(blog3articles2); 
 
    var blog3articles2tags1 = new Tag(blog3articles2.tags.concept); 
    var blog3articles2tags1Category = categories.random(); 
    blog3articles2tags1.category = blog3articles2tags1Category; 
    blog3articles2tags1.article = blog3articles2; 
    blog3articles2.tags.add(blog3articles2tags1); 
    blog3articles2tags1Category.tags.add(blog3articles2tags1); 
 
    var blog3articles2tags2 = new Tag(blog3articles2.tags.concept); 
    var blog3articles2tags2Category = categories.random(); 
    blog3articles2tags2.category = blog3articles2tags2Category; 
    blog3articles2tags2.article = blog3articles2; 
    blog3articles2.tags.add(blog3articles2tags2); 
    blog3articles2tags2Category.tags.add(blog3articles2tags2); 
 
  } 
 
  initUsers() { 
    var user1 = new User(users.concept); 
    user1.name = "beans"; 
    user1.password = "tall"; 
    user1.email = "tree"; 
    users.add(user1); 
 
    var user2 = new User(users.concept); 
    user2.name = "video"; 
    user2.password = "authority"; 
    user2.email = "season"; 
    users.add(user2); 
 
    var user3 = new User(users.concept); 
    user3.name = "truck"; 
    user3.password = "heaven"; 
    user3.email = "hat"; 
    users.add(user3); 
 
  } 
 
  initCategories() { 
    var category1 = new Category(categories.concept); 
    category1.name = "future"; 
    categories.add(category1); 
 
    var category2 = new Category(categories.concept); 
    category2.name = "cable"; 
    categories.add(category2); 
 
    var category3 = new Category(categories.concept); 
    category3.name = "end"; 
    categories.add(category3); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
