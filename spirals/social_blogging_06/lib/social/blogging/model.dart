 
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
 
  fromJsonToAdminEntry() { 
    fromJsonToEntry(socialBloggingAdminEntry); 
  } 
 
  fromJsonToModel() { 
    fromJson(socialBloggingModel); 
  } 
 
  init() { 
    initUsers(); 
    initCategories(); 
    initBlogs(); 
    initComments(); 
    initAdmins(); 
  } 
 
  initBlogs() { 
    var blog1 = new Blog(blogs.concept); 
    blog1.link = Uri.parse("http://www.dartlang.org/articles/m1-language-changes/"); 
    blog1.name = "plaho"; 
    blog1.privacy = "unit"; 
    blog1.language = "mile"; 
    var blog1User = users.random(); 
    blog1.user = blog1User; 
    blogs.add(blog1); 
    blog1User.blogs.add(blog1); 
 
    var blog1articles1 = new Article(blog1.articles.concept); 
    blog1articles1.title = "tension"; 
    blog1articles1.content = "call"; 
    blog1articles1.creationDate = new DateTime.now(); 
    blog1articles1.medium = "highway"; 
    blog1articles1.plus = 561; 
    blog1articles1.minus = 6700; 
    blog1articles1.blog = blog1; 
    blog1.articles.add(blog1articles1); 
 
    var blog1articles1tags1 = new Tag(blog1articles1.tags.concept); 
    blog1articles1tags1.note = "pencil"; 
    var blog1articles1tags1Category = categories.random(); 
    blog1articles1tags1.category = blog1articles1tags1Category; 
    blog1articles1tags1.article = blog1articles1; 
    blog1articles1.tags.add(blog1articles1tags1); 
    blog1articles1tags1Category.tags.add(blog1articles1tags1); 
 
    var blog1articles1tags2 = new Tag(blog1articles1.tags.concept); 
    blog1articles1tags2.note = "training"; 
    var blog1articles1tags2Category = categories.random(); 
    blog1articles1tags2.category = blog1articles1tags2Category; 
    blog1articles1tags2.article = blog1articles1; 
    blog1articles1.tags.add(blog1articles1tags2); 
    blog1articles1tags2Category.tags.add(blog1articles1tags2); 
 
    var blog1articles2 = new Article(blog1.articles.concept); 
    blog1articles2.title = "yellow"; 
    blog1articles2.content = "salary"; 
    blog1articles2.creationDate = new DateTime.now(); 
    blog1articles2.medium = "understanding"; 
    blog1articles2.plus = 4065; 
    blog1articles2.minus = 8679; 
    blog1articles2.blog = blog1; 
    blog1.articles.add(blog1articles2); 
 
    var blog1articles2tags1 = new Tag(blog1articles2.tags.concept); 
    blog1articles2tags1.note = "celebration"; 
    var blog1articles2tags1Category = categories.random(); 
    blog1articles2tags1.category = blog1articles2tags1Category; 
    blog1articles2tags1.article = blog1articles2; 
    blog1articles2.tags.add(blog1articles2tags1); 
    blog1articles2tags1Category.tags.add(blog1articles2tags1); 
 
    var blog1articles2tags2 = new Tag(blog1articles2.tags.concept); 
    blog1articles2tags2.note = "milk"; 
    var blog1articles2tags2Category = categories.random(); 
    blog1articles2tags2.category = blog1articles2tags2Category; 
    blog1articles2tags2.article = blog1articles2; 
    blog1articles2.tags.add(blog1articles2tags2); 
    blog1articles2tags2Category.tags.add(blog1articles2tags2); 
 
    var blog2 = new Blog(blogs.concept); 
    blog2.link = Uri.parse("http://blossoms.mit.edu/videos/lessons/taking_walks_delivering_mail_introduction_graph_theory"); 
    blog2.name = "umbrella"; 
    blog2.privacy = "candy"; 
    blog2.language = "chairman"; 
    var blog2User = users.random(); 
    blog2.user = blog2User; 
    blogs.add(blog2); 
    blog2User.blogs.add(blog2); 
 
    var blog2articles1 = new Article(blog2.articles.concept); 
    blog2articles1.title = "letter"; 
    blog2articles1.content = "flower"; 
    blog2articles1.creationDate = new DateTime.now(); 
    blog2articles1.medium = "kids"; 
    blog2articles1.plus = 202; 
    blog2articles1.minus = 5251; 
    blog2articles1.blog = blog2; 
    blog2.articles.add(blog2articles1); 
 
    var blog2articles1tags1 = new Tag(blog2articles1.tags.concept); 
    blog2articles1tags1.note = "enquiry"; 
    var blog2articles1tags1Category = categories.random(); 
    blog2articles1tags1.category = blog2articles1tags1Category; 
    blog2articles1tags1.article = blog2articles1; 
    blog2articles1.tags.add(blog2articles1tags1); 
    blog2articles1tags1Category.tags.add(blog2articles1tags1); 
 
    var blog2articles1tags2 = new Tag(blog2articles1.tags.concept); 
    blog2articles1tags2.note = "restaurant"; 
    var blog2articles1tags2Category = categories.random(); 
    blog2articles1tags2.category = blog2articles1tags2Category; 
    blog2articles1tags2.article = blog2articles1; 
    blog2articles1.tags.add(blog2articles1tags2); 
    blog2articles1tags2Category.tags.add(blog2articles1tags2); 
 
    var blog2articles2 = new Article(blog2.articles.concept); 
    blog2articles2.title = "photo"; 
    blog2articles2.content = "energy"; 
    blog2articles2.creationDate = new DateTime.now(); 
    blog2articles2.medium = "agreement"; 
    blog2articles2.plus = 6273; 
    blog2articles2.minus = 3278; 
    blog2articles2.blog = blog2; 
    blog2.articles.add(blog2articles2); 
 
    var blog2articles2tags1 = new Tag(blog2articles2.tags.concept); 
    blog2articles2tags1.note = "cream"; 
    var blog2articles2tags1Category = categories.random(); 
    blog2articles2tags1.category = blog2articles2tags1Category; 
    blog2articles2tags1.article = blog2articles2; 
    blog2articles2.tags.add(blog2articles2tags1); 
    blog2articles2tags1Category.tags.add(blog2articles2tags1); 
 
    var blog2articles2tags2 = new Tag(blog2articles2.tags.concept); 
    blog2articles2tags2.note = "privacy"; 
    var blog2articles2tags2Category = categories.random(); 
    blog2articles2tags2.category = blog2articles2tags2Category; 
    blog2articles2tags2.article = blog2articles2; 
    blog2articles2.tags.add(blog2articles2tags2); 
    blog2articles2tags2Category.tags.add(blog2articles2tags2); 
 
    var blog3 = new Blog(blogs.concept); 
    blog3.link = Uri.parse("http://tynan.com/cruisework"); 
    blog3.name = "month"; 
    blog3.privacy = "park"; 
    blog3.language = "right"; 
    var blog3User = users.random(); 
    blog3.user = blog3User; 
    blogs.add(blog3); 
    blog3User.blogs.add(blog3); 
 
    var blog3articles1 = new Article(blog3.articles.concept); 
    blog3articles1.title = "oil"; 
    blog3articles1.content = "bank"; 
    blog3articles1.creationDate = new DateTime.now(); 
    blog3articles1.medium = "teacher"; 
    blog3articles1.plus = 2258; 
    blog3articles1.minus = 6338; 
    blog3articles1.blog = blog3; 
    blog3.articles.add(blog3articles1); 
 
    var blog3articles1tags1 = new Tag(blog3articles1.tags.concept); 
    blog3articles1tags1.note = "small"; 
    var blog3articles1tags1Category = categories.random(); 
    blog3articles1tags1.category = blog3articles1tags1Category; 
    blog3articles1tags1.article = blog3articles1; 
    blog3articles1.tags.add(blog3articles1tags1); 
    blog3articles1tags1Category.tags.add(blog3articles1tags1); 
 
    var blog3articles1tags2 = new Tag(blog3articles1.tags.concept); 
    blog3articles1tags2.note = "privacy"; 
    var blog3articles1tags2Category = categories.random(); 
    blog3articles1tags2.category = blog3articles1tags2Category; 
    blog3articles1tags2.article = blog3articles1; 
    blog3articles1.tags.add(blog3articles1tags2); 
    blog3articles1tags2Category.tags.add(blog3articles1tags2); 
 
    var blog3articles2 = new Article(blog3.articles.concept); 
    blog3articles2.title = "output"; 
    blog3articles2.content = "do"; 
    blog3articles2.creationDate = new DateTime.now(); 
    blog3articles2.medium = "hell"; 
    blog3articles2.plus = 156; 
    blog3articles2.minus = 13; 
    blog3articles2.blog = blog3; 
    blog3.articles.add(blog3articles2); 
 
    var blog3articles2tags1 = new Tag(blog3articles2.tags.concept); 
    blog3articles2tags1.note = "highway"; 
    var blog3articles2tags1Category = categories.random(); 
    blog3articles2tags1.category = blog3articles2tags1Category; 
    blog3articles2tags1.article = blog3articles2; 
    blog3articles2.tags.add(blog3articles2tags1); 
    blog3articles2tags1Category.tags.add(blog3articles2tags1); 
 
    var blog3articles2tags2 = new Tag(blog3articles2.tags.concept); 
    blog3articles2tags2.note = "phone"; 
    var blog3articles2tags2Category = categories.random(); 
    blog3articles2tags2.category = blog3articles2tags2Category; 
    blog3articles2tags2.article = blog3articles2; 
    blog3articles2.tags.add(blog3articles2tags2); 
    blog3articles2tags2Category.tags.add(blog3articles2tags2); 
 
  } 
 
  initUsers() { 
    var user1 = new User(users.concept); 
    user1.name = "tension"; 
    user1.password = "thing"; 
    user1.email = "beginning"; 
    user1.registrationDate = new DateTime.now(); 
    users.add(user1); 
 
    var user1follows1 = new Following(user1.follows.concept); 
    user1follows1.date = new DateTime.now(); 
    var user1follows1Follows = users.random(); 
    user1follows1.follows = user1follows1Follows; 
    user1follows1.followedBy = user1; 
    user1.follows.add(user1follows1); 
    user1follows1Follows.follows.add(user1follows1); 
 
    var user1follows2 = new Following(user1.follows.concept); 
    user1follows2.date = new DateTime.now(); 
    var user1follows2Follows = users.random(); 
    user1follows2.follows = user1follows2Follows; 
    user1follows2.followedBy = user1; 
    user1.follows.add(user1follows2); 
    user1follows2Follows.follows.add(user1follows2); 
 
    var user2 = new User(users.concept); 
    user2.name = "consciousness"; 
    user2.password = "month"; 
    user2.email = "tall"; 
    user2.registrationDate = new DateTime.now(); 
    users.add(user2); 
 
    var user2follows1 = new Following(user2.follows.concept); 
    user2follows1.date = new DateTime.now(); 
    var user2follows1Follows = users.random(); 
    user2follows1.follows = user2follows1Follows; 
    user2follows1.followedBy = user2; 
    user2.follows.add(user2follows1); 
    user2follows1Follows.follows.add(user2follows1); 
 
    var user2follows2 = new Following(user2.follows.concept); 
    user2follows2.date = new DateTime.now(); 
    var user2follows2Follows = users.random(); 
    user2follows2.follows = user2follows2Follows; 
    user2follows2.followedBy = user2; 
    user2.follows.add(user2follows2); 
    user2follows2Follows.follows.add(user2follows2); 
 
    var user3 = new User(users.concept); 
    user3.name = "selfdo"; 
    user3.password = "consciousness"; 
    user3.email = "grading"; 
    user3.registrationDate = new DateTime.now(); 
    users.add(user3); 
 
    var user3follows1 = new Following(user3.follows.concept); 
    user3follows1.date = new DateTime.now(); 
    var user3follows1Follows = users.random(); 
    user3follows1.follows = user3follows1Follows; 
    user3follows1.followedBy = user3; 
    user3.follows.add(user3follows1); 
    user3follows1Follows.follows.add(user3follows1); 
 
    var user3follows2 = new Following(user3.follows.concept); 
    user3follows2.date = new DateTime.now(); 
    var user3follows2Follows = users.random(); 
    user3follows2.follows = user3follows2Follows; 
    user3follows2.followedBy = user3; 
    user3.follows.add(user3follows2); 
    user3follows2Follows.follows.add(user3follows2); 
 
  } 
 
  initCategories() { 
    var category1 = new Category(categories.concept); 
    category1.name = "heating"; 
    categories.add(category1); 
 
    var category1categories1 = new Category(category1.categories.concept); 
    category1categories1.name = "energy"; 
    category1categories1.category = category1; 
    category1.categories.add(category1categories1); 
 
    var category1categories2 = new Category(category1.categories.concept); 
    category1categories2.name = "cardboard"; 
    category1categories2.category = category1; 
    category1.categories.add(category1categories2); 
 
    var category2 = new Category(categories.concept); 
    category2.name = "brad"; 
    categories.add(category2); 
 
    var category2categories1 = new Category(category2.categories.concept); 
    category2categories1.name = "productivity"; 
    category2categories1.category = category2; 
    category2.categories.add(category2categories1); 
 
    var category2categories2 = new Category(category2.categories.concept); 
    category2categories2.name = "dvd"; 
    category2categories2.category = category2; 
    category2.categories.add(category2categories2); 
 
    var category3 = new Category(categories.concept); 
    category3.name = "table"; 
    categories.add(category3); 
 
    var category3categories1 = new Category(category3.categories.concept); 
    category3categories1.name = "end"; 
    category3categories1.category = category3; 
    category3.categories.add(category3categories1); 
 
    var category3categories2 = new Category(category3.categories.concept); 
    category3categories2.name = "head"; 
    category3categories2.category = category3; 
    category3.categories.add(category3categories2); 
 
  } 
 
  initComments() { 
    var comment1 = new Comment(comments.concept); 
    comment1.text = "school"; 
    comment1.date = new DateTime.now(); 
    comment1.by = "crisis"; 
    comments.add(comment1); 
 
    var comment2 = new Comment(comments.concept); 
    comment2.text = "software"; 
    comment2.date = new DateTime.now(); 
    comment2.by = "bank"; 
    comments.add(comment2); 
 
    var comment3 = new Comment(comments.concept); 
    comment3.text = "distance"; 
    comment3.date = new DateTime.now(); 
    comment3.by = "head"; 
    comments.add(comment3); 
 
  } 
 
  initAdmins() { 
    var admin1 = new Admin(admins.concept); 
    admin1.privilege = "drink"; 
    var admin1IsUser = users.random(); 
    admin1.isUser = admin1IsUser; 
    admins.add(admin1); 
    admin1IsUser.admins.add(admin1); 
 
    var admin2 = new Admin(admins.concept); 
    admin2.privilege = "selfie"; 
    var admin2IsUser = users.random(); 
    admin2.isUser = admin2IsUser; 
    admins.add(admin2); 
    admin2IsUser.admins.add(admin2); 
 
    var admin3 = new Admin(admins.concept); 
    admin3.privilege = "mile"; 
    var admin3IsUser = users.random(); 
    admin3.isUser = admin3IsUser; 
    admins.add(admin3); 
    admin3IsUser.admins.add(admin3); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
