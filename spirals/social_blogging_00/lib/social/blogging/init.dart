part of social_blogging;

// lib/social/blogging/init.dart

initSocialBlogging(var entries) {
  _initBlogs(entries);
}

_initBlogs(var entries) {
  var blogs = entries.blogs;
  var blogConcept = blogs.concept;

  var blog01 = new Blog(blogConcept);
  blog01.link = Uri.parse('http://www.scribegriff.com/studios/');
  blog01.name = "scribeGriff Studios";
  blogs.add(blog01);

  var blog02 = new Blog(blogConcept);
  blog02.link = Uri.parse('http://blog.sethladd.com/');
  blog02.name = "Seth Ladd's Blog";
  blogs.add(blog02);

  var blog03 = new Blog(blogConcept);
  blog03.link = Uri.parse('http://dzenanr.github.io/');
  blog03.name = "On Dart";
  blogs.add(blog03);
}

