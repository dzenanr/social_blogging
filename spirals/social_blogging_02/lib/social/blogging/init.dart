                                                                                                    part of social_blogging; 
 
// lib/social/blogging/init.dart 
 
initSocialBlogging(var entries) { 
  _initBlogs(entries); 
  _initUsers(entries); 
} 
 
_initBlogs(var entries) { 
  Blog blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://news.dartlang.org/2012/08/tracking-darts-m1-progress.html"); 
  blog.name = "value0"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/articles/style-guide/"); 
  blog.name = "value1"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/"); 
  blog.name = "value2"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/articles/m1-language-changes/"); 
  blog.name = "value3"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://kkovacs.eu/cassandra-vs-mongodb-vs-couchdb-vs-redis"); 
  blog.name = "value4"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/articles/idiomatic-dart/"); 
  blog.name = "value5"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("https://github.com/languages/Dart"); 
  blog.name = "value6"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/articles/m1-language-changes/"); 
  blog.name = "value7"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/support/"); 
  blog.name = "value8"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://news.dartlang.org/2012/08/tracking-darts-m1-progress.html"); 
  blog.name = "value9"; 
  entries.blogs.add(blog); 
 
} 
 
_initUsers(var entries) { 
  User user = new User(entries.users.concept); 
  user.name = "value0"; 
  user.password = "value0"; 
  user.email = "value0"; 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value1"; 
  user.password = "value1"; 
  user.email = "value1"; 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value2"; 
  user.password = "value2"; 
  user.email = "value2"; 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value3"; 
  user.password = "value3"; 
  user.email = "value3"; 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value4"; 
  user.password = "value4"; 
  user.email = "value4"; 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value5"; 
  user.password = "value5"; 
  user.email = "value5"; 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value6"; 
  user.password = "value6"; 
  user.email = "value6"; 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value7"; 
  user.password = "value7"; 
  user.email = "value7"; 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value8"; 
  user.password = "value8"; 
  user.email = "value8"; 
  entries.users.add(user); 
 
  user = new User(entries.users.concept); 
  user.name = "value9"; 
  user.password = "value9"; 
  user.email = "value9"; 
  entries.users.add(user); 
 
} 
 
