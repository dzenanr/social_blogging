 
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
    blog1.link = Uri.parse("http://www.villa-marrakech.ma/"); 
    blog1.name = "account"; 
    var blog1User = users.random(); 
    blog1.user = blog1User; 
    blogs.add(blog1); 
    blog1User.blogs.add(blog1); 
 
    var blog1Article1 = new Article(blog1.articles.concept); 
    blog1Article1.title = "tension"; 
    blog1Article1.content = "cinema"; 
    blog1Article1.creationDate = new DateTime.now(); 
    blog1Article1.blog = blog1; 
    blog1.articles.add(blog1Article1); 
 
    var blog1Article1Tag1 = new Tag(blog1Article1.tags.concept); 
    var blog1Article1Tag1Category = categories.random(); 
    blog1Article1Tag1.category = blog1Article1Tag1Category; 
    blog1Article1Tag1.article = blog1Article1; 
    blog1Article1.tags.add(blog1Article1Tag1); 
    blog1Article1Tag1Category.tags.add(blog1Article1Tag1); 
 
    var blog1Article1Tag2 = new Tag(blog1Article1.tags.concept); 
    var blog1Article1Tag2Category = categories.random(); 
    blog1Article1Tag2.category = blog1Article1Tag2Category; 
    blog1Article1Tag2.article = blog1Article1; 
    blog1Article1.tags.add(blog1Article1Tag2); 
    blog1Article1Tag2Category.tags.add(blog1Article1Tag2); 
 
    var blog1Article2 = new Article(blog1.articles.concept); 
    blog1Article2.title = "end"; 
    blog1Article2.content = "chairman"; 
    blog1Article2.creationDate = new DateTime.now(); 
    blog1Article2.blog = blog1; 
    blog1.articles.add(blog1Article2); 
 
    var blog1Article2Tag1 = new Tag(blog1Article2.tags.concept); 
    var blog1Article2Tag1Category = categories.random(); 
    blog1Article2Tag1.category = blog1Article2Tag1Category; 
    blog1Article2Tag1.article = blog1Article2; 
    blog1Article2.tags.add(blog1Article2Tag1); 
    blog1Article2Tag1Category.tags.add(blog1Article2Tag1); 
 
    var blog1Article2Tag2 = new Tag(blog1Article2.tags.concept); 
    var blog1Article2Tag2Category = categories.random(); 
    blog1Article2Tag2.category = blog1Article2Tag2Category; 
    blog1Article2Tag2.article = blog1Article2; 
    blog1Article2.tags.add(blog1Article2Tag2); 
    blog1Article2Tag2Category.tags.add(blog1Article2Tag2); 
 
    var blog2 = new Blog(blogs.concept); 
    blog2.link = Uri.parse("http://gsdview.appspot.com/dart-editor-archive-continuous/latest/"); 
    blog2.name = "drink"; 
    var blog2User = users.random(); 
    blog2.user = blog2User; 
    blogs.add(blog2); 
    blog2User.blogs.add(blog2); 
 
    var blog2Article1 = new Article(blog2.articles.concept); 
    blog2Article1.title = "accomodation"; 
    blog2Article1.content = "dinner"; 
    blog2Article1.creationDate = new DateTime.now(); 
    blog2Article1.blog = blog2; 
    blog2.articles.add(blog2Article1); 
 
    var blog2Article1Tag1 = new Tag(blog2Article1.tags.concept); 
    var blog2Article1Tag1Category = categories.random(); 
    blog2Article1Tag1.category = blog2Article1Tag1Category; 
    blog2Article1Tag1.article = blog2Article1; 
    blog2Article1.tags.add(blog2Article1Tag1); 
    blog2Article1Tag1Category.tags.add(blog2Article1Tag1); 
 
    var blog2Article1Tag2 = new Tag(blog2Article1.tags.concept); 
    var blog2Article1Tag2Category = categories.random(); 
    blog2Article1Tag2.category = blog2Article1Tag2Category; 
    blog2Article1Tag2.article = blog2Article1; 
    blog2Article1.tags.add(blog2Article1Tag2); 
    blog2Article1Tag2Category.tags.add(blog2Article1Tag2); 
 
    var blog2Article2 = new Article(blog2.articles.concept); 
    blog2Article2.title = "car"; 
    blog2Article2.content = "bank"; 
    blog2Article2.creationDate = new DateTime.now(); 
    blog2Article2.blog = blog2; 
    blog2.articles.add(blog2Article2); 
 
    var blog2Article2Tag1 = new Tag(blog2Article2.tags.concept); 
    var blog2Article2Tag1Category = categories.random(); 
    blog2Article2Tag1.category = blog2Article2Tag1Category; 
    blog2Article2Tag1.article = blog2Article2; 
    blog2Article2.tags.add(blog2Article2Tag1); 
    blog2Article2Tag1Category.tags.add(blog2Article2Tag1); 
 
    var blog2Article2Tag2 = new Tag(blog2Article2.tags.concept); 
    var blog2Article2Tag2Category = categories.random(); 
    blog2Article2Tag2.category = blog2Article2Tag2Category; 
    blog2Article2Tag2.article = blog2Article2; 
    blog2Article2.tags.add(blog2Article2Tag2); 
    blog2Article2Tag2Category.tags.add(blog2Article2Tag2); 
 
    var blog3 = new Blog(blogs.concept); 
    blog3.link = Uri.parse("https://code.google.com/p/dart/"); 
    blog3.name = "office"; 
    var blog3User = users.random(); 
    blog3.user = blog3User; 
    blogs.add(blog3); 
    blog3User.blogs.add(blog3); 
 
    var blog3Article1 = new Article(blog3.articles.concept); 
    blog3Article1.title = "element"; 
    blog3Article1.content = "abstract"; 
    blog3Article1.creationDate = new DateTime.now(); 
    blog3Article1.blog = blog3; 
    blog3.articles.add(blog3Article1); 
 
    var blog3Article1Tag1 = new Tag(blog3Article1.tags.concept); 
    var blog3Article1Tag1Category = categories.random(); 
    blog3Article1Tag1.category = blog3Article1Tag1Category; 
    blog3Article1Tag1.article = blog3Article1; 
    blog3Article1.tags.add(blog3Article1Tag1); 
    blog3Article1Tag1Category.tags.add(blog3Article1Tag1); 
 
    var blog3Article1Tag2 = new Tag(blog3Article1.tags.concept); 
    var blog3Article1Tag2Category = categories.random(); 
    blog3Article1Tag2.category = blog3Article1Tag2Category; 
    blog3Article1Tag2.article = blog3Article1; 
    blog3Article1.tags.add(blog3Article1Tag2); 
    blog3Article1Tag2Category.tags.add(blog3Article1Tag2); 
 
    var blog3Article2 = new Article(blog3.articles.concept); 
    blog3Article2.title = "marriage"; 
    blog3Article2.content = "secretary"; 
    blog3Article2.creationDate = new DateTime.now(); 
    blog3Article2.blog = blog3; 
    blog3.articles.add(blog3Article2); 
 
    var blog3Article2Tag1 = new Tag(blog3Article2.tags.concept); 
    var blog3Article2Tag1Category = categories.random(); 
    blog3Article2Tag1.category = blog3Article2Tag1Category; 
    blog3Article2Tag1.article = blog3Article2; 
    blog3Article2.tags.add(blog3Article2Tag1); 
    blog3Article2Tag1Category.tags.add(blog3Article2Tag1); 
 
    var blog3Article2Tag2 = new Tag(blog3Article2.tags.concept); 
    var blog3Article2Tag2Category = categories.random(); 
    blog3Article2Tag2.category = blog3Article2Tag2Category; 
    blog3Article2Tag2.article = blog3Article2; 
    blog3Article2.tags.add(blog3Article2Tag2); 
    blog3Article2Tag2Category.tags.add(blog3Article2Tag2); 
 
  } 
 
  initUsers() { 
    var user1 = new User(users.concept); 
    user1.name = "test"; 
    user1.password = "judge"; 
    user1.email = "price"; 
    users.add(user1); 
 
    var user2 = new User(users.concept); 
    user2.name = "phone"; 
    user2.password = "left"; 
    user2.email = "end"; 
    users.add(user2); 
 
    var user3 = new User(users.concept); 
    user3.name = "autobus"; 
    user3.password = "thing"; 
    user3.email = "holiday"; 
    users.add(user3); 
 
  } 
 
  initCategories() { 
    var category1 = new Category(categories.concept); 
    category1.name = "lake"; 
    categories.add(category1); 
 
    var category2 = new Category(categories.concept); 
    category2.name = "vessel"; 
    categories.add(category2); 
 
    var category3 = new Category(categories.concept); 
    category3.name = "abstract"; 
    categories.add(category3); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
