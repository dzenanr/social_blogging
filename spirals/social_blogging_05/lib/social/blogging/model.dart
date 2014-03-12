 
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
    blog1.link = Uri.parse("http://tinyhouseblog.com/yurts/tiny-spiritual-retreat-cabins/"); 
    blog1.name = "boat"; 
    blog1.privacy = "effort"; 
    blog1.language = "mind"; 
    var blog1User = users.random(); 
    blog1.user = blog1User; 
    blogs.add(blog1); 
    blog1User.blogs.add(blog1); 
 
    var blog1articles1 = new Article(blog1.articles.concept); 
    blog1articles1.title = "finger"; 
    blog1articles1.content = "flower"; 
    blog1articles1.creationDate = new DateTime.now(); 
    blog1articles1.medium = "family"; 
    blog1articles1.plus = 9212; 
    blog1articles1.minus = 789; 
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
    blog1articles2.title = "photo"; 
    blog1articles2.content = "deep"; 
    blog1articles2.creationDate = new DateTime.now(); 
    blog1articles2.medium = "flower"; 
    blog1articles2.plus = 2547; 
    blog1articles2.minus = 1605; 
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
    blog2.link = Uri.parse("http://www.sloanecroatia.com/blog/other-side-of-croatia/"); 
    blog2.name = "room"; 
    blog2.privacy = "professor"; 
    blog2.language = "heating"; 
    var blog2User = users.random(); 
    blog2.user = blog2User; 
    blogs.add(blog2); 
    blog2User.blogs.add(blog2); 
 
    var blog2articles1 = new Article(blog2.articles.concept); 
    blog2articles1.title = "sentence"; 
    blog2articles1.content = "oil"; 
    blog2articles1.creationDate = new DateTime.now(); 
    blog2articles1.medium = "flower"; 
    blog2articles1.plus = 9017; 
    blog2articles1.minus = 3542; 
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
    blog2articles2.title = "darts"; 
    blog2articles2.content = "walking"; 
    blog2articles2.creationDate = new DateTime.now(); 
    blog2articles2.medium = "college"; 
    blog2articles2.plus = 6542; 
    blog2articles2.minus = 8918; 
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
    blog3.link = Uri.parse("http://blossoms.mit.edu/videos/lessons/taking_walks_delivering_mail_introduction_graph_theory"); 
    blog3.name = "nothingness"; 
    blog3.privacy = "water"; 
    blog3.language = "holiday"; 
    var blog3User = users.random(); 
    blog3.user = blog3User; 
    blogs.add(blog3); 
    blog3User.blogs.add(blog3); 
 
    var blog3articles1 = new Article(blog3.articles.concept); 
    blog3articles1.title = "restaurant"; 
    blog3articles1.content = "boat"; 
    blog3articles1.creationDate = new DateTime.now(); 
    blog3articles1.medium = "photo"; 
    blog3articles1.plus = 8435; 
    blog3articles1.minus = 3690; 
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
    blog3articles2.title = "cable"; 
    blog3articles2.content = "celebration"; 
    blog3articles2.creationDate = new DateTime.now(); 
    blog3articles2.medium = "finger"; 
    blog3articles2.plus = 1301; 
    blog3articles2.minus = 1123; 
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
    user1.name = "architecture"; 
    user1.password = "deep"; 
    user1.email = "effort"; 
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
    user2.name = "slate"; 
    user2.password = "head"; 
    user2.email = "nothingness"; 
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
    user3.name = "teaching"; 
    user3.password = "cream"; 
    user3.email = "test"; 
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
    category1.name = "done"; 
    categories.add(category1); 
 
    var category2 = new Category(categories.concept); 
    category2.name = "tax"; 
    categories.add(category2); 
 
    var category3 = new Category(categories.concept); 
    category3.name = "course"; 
    categories.add(category3); 
 
  } 
 
  initComments() { 
    var comment1 = new Comment(comments.concept); 
    comment1.text = "question"; 
    comment1.date = new DateTime.now(); 
    comment1.by = "lake"; 
    comments.add(comment1); 
 
    var comment2 = new Comment(comments.concept); 
    comment2.text = "ocean"; 
    comment2.date = new DateTime.now(); 
    comment2.by = "tree"; 
    comments.add(comment2); 
 
    var comment3 = new Comment(comments.concept); 
    comment3.text = "beach"; 
    comment3.date = new DateTime.now(); 
    comment3.by = "home"; 
    comments.add(comment3); 
 
  } 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
