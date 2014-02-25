                                                                                                                                                                                                                                                part of social_blogging; 
 
// lib/social/blogging/init.dart 
 
initSocialBlogging(var entries) { 
  _initBlogs(entries); 
  _initUsers(entries); 
  _initCategories(entries); 
  _initComments(entries); 
} 
 
_initBlogs(var entries) { 
  Blog blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://blog.dartwatch.com/p/community-dart-packages-and-examples.html"); 
  blog.name = "value0"; 
  blog.privacy = "value0"; 
  blog.language = "value0"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://hilite.me/"); 
  blog.name = "value1"; 
  blog.privacy = "value1"; 
  blog.language = "value1"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://code.google.com/p/dart/issues/list"); 
  blog.name = "value2"; 
  blog.privacy = "value2"; 
  blog.language = "value2"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/support/"); 
  blog.name = "value3"; 
  blog.privacy = "value3"; 
  blog.language = "value3"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://api.dartlang.org/docs/continuous/"); 
  blog.name = "value4"; 
  blog.privacy = "value4"; 
  blog.language = "value4"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.mendeley.com/"); 
  blog.name = "value5"; 
  blog.privacy = "value5"; 
  blog.language = "value5"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.drdobbs.com/open-source/dart-build-html5-apps-fast/240005631"); 
  blog.name = "value6"; 
  blog.privacy = "value6"; 
  blog.language = "value6"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("https://groups.google.com/a/dartlang.org/forum/?fromgroups#!forum/web-ui"); 
  blog.name = "value7"; 
  blog.privacy = "value7"; 
  blog.language = "value7"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://gsdview.appspot.com/dart-editor-archive-continuous/latest/"); 
  blog.name = "value8"; 
  blog.privacy = "value8"; 
  blog.language = "value8"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.mendeley.com/"); 
  blog.name = "value9"; 
  blog.privacy = "value9"; 
  blog.language = "value9"; 
  entries.blogs.add(blog); 
 
} 
 
_initUsers(var entries) { 
  User user = new User(entries.users.concept); 
  user.name = "value0"; 
  user.password = "value0"; 
  user.email = "value0"; 
  user.registrationDate = new DateTime.now(); 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value1"; 
  user.password = "value1"; 
  user.email = "value1"; 
  user.registrationDate = new DateTime.now(); 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value2"; 
  user.password = "value2"; 
  user.email = "value2"; 
  user.registrationDate = new DateTime.now(); 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value3"; 
  user.password = "value3"; 
  user.email = "value3"; 
  user.registrationDate = new DateTime.now(); 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value4"; 
  user.password = "value4"; 
  user.email = "value4"; 
  user.registrationDate = new DateTime.now(); 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value5"; 
  user.password = "value5"; 
  user.email = "value5"; 
  user.registrationDate = new DateTime.now(); 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value6"; 
  user.password = "value6"; 
  user.email = "value6"; 
  user.registrationDate = new DateTime.now(); 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value7"; 
  user.password = "value7"; 
  user.email = "value7"; 
  user.registrationDate = new DateTime.now(); 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value8"; 
  user.password = "value8"; 
  user.email = "value8"; 
  user.registrationDate = new DateTime.now(); 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value9"; 
  user.password = "value9"; 
  user.email = "value9"; 
  user.registrationDate = new DateTime.now(); 
  entries.users.add(user); 
 
} 
 
_initCategories(var entries) { 
  Category category = new Category(entries.categories.concept); 
  category.name = "value0"; 
  entries.categories.add(category); 
 
  category = new Category(entries.categories.concept); 
  category.name = "value1"; 
  entries.categories.add(category); 
 
  category = new Category(entries.categories.concept); 
  category.name = "value2"; 
  entries.categories.add(category); 
 
  category = new Category(entries.categories.concept); 
  category.name = "value3"; 
  entries.categories.add(category); 
 
  category = new Category(entries.categories.concept); 
  category.name = "value4"; 
  entries.categories.add(category); 
 
  category = new Category(entries.categories.concept); 
  category.name = "value5"; 
  entries.categories.add(category); 
 
  category = new Category(entries.categories.concept); 
  category.name = "value6"; 
  entries.categories.add(category); 
 
  category = new Category(entries.categories.concept); 
  category.name = "value7"; 
  entries.categories.add(category); 
 
  category = new Category(entries.categories.concept); 
  category.name = "value8"; 
  entries.categories.add(category); 
 
  category = new Category(entries.categories.concept); 
  category.name = "value9"; 
  entries.categories.add(category); 
 
} 
 
_initComments(var entries) { 
  Comment comment = new Comment(entries.comments.concept); 
  comment.text = "value0"; 
  comment.date = new DateTime.now(); 
  comment.by = "value0"; 
  entries.comments.add(comment); 
 
  comment = new Comment(entries.comments.concept); 
  comment.text = "value1"; 
  comment.date = new DateTime.now(); 
  comment.by = "value1"; 
  entries.comments.add(comment); 
 
  comment = new Comment(entries.comments.concept); 
  comment.text = "value2"; 
  comment.date = new DateTime.now(); 
  comment.by = "value2"; 
  entries.comments.add(comment); 
 
  comment = new Comment(entries.comments.concept); 
  comment.text = "value3"; 
  comment.date = new DateTime.now(); 
  comment.by = "value3"; 
  entries.comments.add(comment); 
 
  comment = new Comment(entries.comments.concept); 
  comment.text = "value4"; 
  comment.date = new DateTime.now(); 
  comment.by = "value4"; 
  entries.comments.add(comment); 
 
  comment = new Comment(entries.comments.concept); 
  comment.text = "value5"; 
  comment.date = new DateTime.now(); 
  comment.by = "value5"; 
  entries.comments.add(comment); 
 
  comment = new Comment(entries.comments.concept); 
  comment.text = "value6"; 
  comment.date = new DateTime.now(); 
  comment.by = "value6"; 
  entries.comments.add(comment); 
 
  comment = new Comment(entries.comments.concept); 
  comment.text = "value7"; 
  comment.date = new DateTime.now(); 
  comment.by = "value7"; 
  entries.comments.add(comment); 
 
  comment = new Comment(entries.comments.concept); 
  comment.text = "value8"; 
  comment.date = new DateTime.now(); 
  comment.by = "value8"; 
  entries.comments.add(comment); 
 
  comment = new Comment(entries.comments.concept); 
  comment.text = "value9"; 
  comment.date = new DateTime.now(); 
  comment.by = "value9"; 
  entries.comments.add(comment); 
 
} 
 
