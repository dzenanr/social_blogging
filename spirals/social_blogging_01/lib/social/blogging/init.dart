                                        part of social_blogging; 
 
// lib/social/blogging/init.dart 
 
initSocialBlogging(var entries) { 
  _initBlogs(entries); 
} 
 
_initBlogs(var entries) { 
  Blog blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("https://groups.google.com/a/dartlang.org/forum/?fromgroups#!forum/misc"); 
  blog.name = "value0"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://kkovacs.eu/cassandra-vs-mongodb-vs-couchdb-vs-redis"); 
  blog.name = "value1"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://cci.mit.edu/ci2012/plenaries/index.html"); 
  blog.name = "value2"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.drdobbs.com/open-source/dart-build-html5-apps-fast/240005631"); 
  blog.name = "value3"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/articles/dart-unit-tests/"); 
  blog.name = "value4"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/articles/m1-language-changes/"); 
  blog.name = "value5"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://news.dartlang.org/2012/08/tracking-darts-m1-progress.html"); 
  blog.name = "value6"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/articles/style-guide/"); 
  blog.name = "value7"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://code.google.com/p/dart-enumerators/"); 
  blog.name = "value8"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/"); 
  blog.name = "value9"; 
  entries.blogs.add(blog); 
 
} 
 
