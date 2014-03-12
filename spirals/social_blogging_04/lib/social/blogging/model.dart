 
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
 
  fromJsonToCommentEntry() { 
    fromJsonToEntry(socialBloggingCommentEntry); 
  } 
 
  fromJsonToModel() { 
    fromJson(socialBloggingModel); 
  } 
 
  init() { 
    initUsers(); 
    initCategories(); 
    initComments(); 
    initBlogs(); 
  } 
 
  initBlogs() { 
    var blog1 = new Blog(blogs.concept); 
    blog1.link = Uri.parse("https://github.com/vadimtsushko/angular_objectory_demo"); 
    blog1.name = "lunch"; 
    blog1.privacy = "sentence"; 
    var blog1User = users.random(); 
    blog1.user = blog1User; 
    blogs.add(blog1); 
    blog1User.blogs.add(blog1); 
 
    var blog1articles1 = new Article(blog1.articles.concept); 
    blog1articles1.title = "thing"; 
    blog1articles1.content = "privacy"; 
    blog1articles1.creationDate = new DateTime.now(); 
    blog1articles1.medium = "question"; 
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
    blog1articles2.title = "instruction"; 
    blog1articles2.content = "discount"; 
    blog1articles2.creationDate = new DateTime.now(); 
    blog1articles2.medium = "training"; 
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
    blog2.link = Uri.parse("http://www.lisbonlux.com/magazine/25-reasons-to-love-lisbon/"); 
    blog2.name = "observation"; 
    blog2.privacy = "family"; 
    var blog2User = users.random(); 
    blog2.user = blog2User; 
    blogs.add(blog2); 
    blog2User.blogs.add(blog2); 
 
    var blog2articles1 = new Article(blog2.articles.concept); 
    blog2articles1.title = "entrance"; 
    blog2articles1.content = "bird"; 
    blog2articles1.creationDate = new DateTime.now(); 
    blog2articles1.medium = "teacher"; 
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
    blog2articles2.title = "done"; 
    blog2articles2.content = "center"; 
    blog2articles2.creationDate = new DateTime.now(); 
    blog2articles2.medium = "security"; 
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
    blog3.link = Uri.parse("https://webmenu.org/apps/webmenu"); 
    blog3.name = "candy"; 
    blog3.privacy = "brave"; 
    var blog3User = users.random(); 
    blog3.user = blog3User; 
    blogs.add(blog3); 
    blog3User.blogs.add(blog3); 
 
    var blog3articles1 = new Article(blog3.articles.concept); 
    blog3articles1.title = "bank"; 
    blog3articles1.content = "theme"; 
    blog3articles1.creationDate = new DateTime.now(); 
    blog3articles1.medium = "plate"; 
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
    blog3articles2.title = "season"; 
    blog3articles2.content = "cabinet"; 
    blog3articles2.creationDate = new DateTime.now(); 
    blog3articles2.medium = "oil"; 
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
    user1.name = "accident"; 
    user1.password = "big"; 
    user1.email = "do"; 
    user1.registrationDate = new DateTime.now(); 
    users.add(user1); 
 
    var user2 = new User(users.concept); 
    user2.name = "professor"; 
    user2.password = "crisis"; 
    user2.email = "sun"; 
    user2.registrationDate = new DateTime.now(); 
    users.add(user2); 
 
    var user3 = new User(users.concept); 
    user3.name = "nothingness"; 
    user3.password = "time"; 
    user3.email = "bird"; 
    user3.registrationDate = new DateTime.now(); 
    users.add(user3); 
 
  } 
 
  initCategories() { 
    var category1 = new Category(categories.concept); 
    category1.name = "concern"; 
    categories.add(category1); 
 
    var category2 = new Category(categories.concept); 
    category2.name = "kids"; 
    categories.add(category2); 
 
    var category3 = new Category(categories.concept); 
    category3.name = "river"; 
    categories.add(category3); 
 
  } 
 
  initComments() { 
    var comment1 = new Comment(comments.concept); 
    comment1.text = "chairman"; 
    comment1.date = new DateTime.now(); 
    comment1.by = "room"; 
    comments.add(comment1); 
 
    var comment2 = new Comment(comments.concept); 
    comment2.text = "house"; 
    comment2.date = new DateTime.now(); 
    comment2.by = "universe"; 
    comments.add(comment2); 
 
    var comment3 = new Comment(comments.concept); 
    comment3.text = "point"; 
    comment3.date = new DateTime.now(); 
    comment3.by = "country"; 
    comments.add(comment3); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
