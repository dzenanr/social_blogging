                                                                                                    part of social_blogging;

// lib/social/blogging/init.dart

initSocialBlogging(var entries) {
  _initBlogs(entries);
  _initUsers(entries);
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

