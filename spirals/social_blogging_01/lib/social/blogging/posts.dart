part of social_blogging; 
 
// lib/social/blogging/posts.dart 
 
class Post extends PostGen { 
 
  Post(Concept concept) : super(concept); 
 
  Post.withId(Concept concept, Blog blog, String title) : 
    super.withId(concept, blog, title); 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
class Posts extends PostsGen { 
 
  Posts(Concept concept) : super(concept); 
 
  // added after code gen - begin 
 
  // added after code gen - end 
 
} 
 
