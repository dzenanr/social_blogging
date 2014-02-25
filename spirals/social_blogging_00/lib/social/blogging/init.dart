                                        part of social_blogging; 
 
// lib/social/blogging/init.dart 
 
initSocialBlogging(var entries) { 
  _initBlogs(entries); 
} 
 
_initBlogs(var entries) { 
  Blog blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://news.dartlang.org/2012/08/tracking-darts-m1-progress.html"); 
  blog.name = "value0"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.drdobbs.com/open-source/dart-build-html5-apps-fast/240005631"); 
  blog.name = "value1"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.dartlang.org/docs/editor/"); 
  blog.name = "value2"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://hilite.me/"); 
  blog.name = "value3"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://jsonformatter.curiousconcept.com/"); 
  blog.name = "value4"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://code.google.com/p/dart-enumerators/"); 
  blog.name = "value5"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://code.google.com/p/dart-enumerators/"); 
  blog.name = "value6"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://www.drdobbs.com/open-source/dart-build-html5-apps-fast/240005631"); 
  blog.name = "value7"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://jsonformatter.curiousconcept.com/"); 
  blog.name = "value8"; 
  entries.blogs.add(blog); 
 
  blog = new Blog(entries.blogs.concept); 
  blog.link = Uri.parse("http://code.google.com/p/dart/wiki/Contributing"); 
  blog.name = "value9"; 
  entries.blogs.add(blog); 
 
} 
 
