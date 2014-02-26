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

  var blog01Post01 = new Post(blog01.posts.concept);
  blog01Post01.title =
    "Today's @NgDirective: Get Up to Speed Using Angular with Dart";
  blog01Post01.content = """
Although I spend most of my time working with Dart using Polymer, 
it's hard not to find the announcement of AngularDart a compelling reason 
to take it out for a spin. And I confess, the more I use Angular with Dart, 
the more I'm convinced it is going to be a major component of my Dart 
toolbox for the foreseeable future. I had come across Jesus Rodriguez's 
introduction to the model driven framework with his appropriately named 
blog post Why Does Angular.js Rock?. In this article, we look at the Dart 
equivalents of the examples Jesus presented.
  """;
  blog01Post01.blog = blog01;
  blog01.posts.add(blog01Post01);

  var blog01Post02 = new Post(blog01.posts.concept);
  blog01Post02.title =
    "Iterables, Futures, and Future.wait() in Dart";
  blog01Post02.content = """
Several days ago while working with Dart, I was coding up a problem that 
required that I iterate over a function that returns its value represented 
as a Future. The variables that I needed to pass to this function were read 
from an external file and stored in a List using a Stream. To evaluate the 
function for each element in the List, I was tempted to use a simple 
forEach() to pass the elements to the function returning a Future. 
  """;
  blog01Post02.blog = blog01;
  blog01.posts.add(blog01Post02);

  var blog02 = new Blog(blogConcept);
  blog02.link = Uri.parse('http://blog.sethladd.com/');
  blog02.name = "Seth Ladd's Blog";
  blogs.add(blog02);

  var blog02Post01 = new Post(blog02.posts.concept);
  blog02Post01.title =
    "Angular and Polymer Data Binding, Together!";
  blog02Post01.content = """
Angular, a super heroic MVC framework, and Polymer, polyfills and 
enhancements for custom elements built on top of Web Components, can 
live harmoniously in the same app. This post shows you how to connect 
Angular-controlled components to Polymer-controlled elements via data 
binding. And we do it all in Dart.
  """;
  blog02Post01.blog = blog02;
  blog02.posts.add(blog01Post01);

  var blog03 = new Blog(blogConcept);
  blog03.link = Uri.parse('http://dzenanr.github.io/');
  blog03.name = "On Dart";
  blogs.add(blog03);
}



