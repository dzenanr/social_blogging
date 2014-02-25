part of social_blogging; 
 
// lib/social/blogging/blogs.dart 
 
class Blog extends BlogGen { 
 
  Blog(Concept concept) : super(concept); 
 
  Blog.withId(Concept concept, Uri link) : 
    super.withId(concept, link); 
 
} 
 
class Blogs extends BlogsGen { 
 
  Blogs(Concept concept) : super(concept); 
 
} 
 
