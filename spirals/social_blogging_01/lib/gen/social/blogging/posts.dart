part of social_blogging; 
 
// lib/gen/social/blogging/posts.dart 
 
abstract class PostGen extends ConceptEntity<Post> { 
 
  PostGen(Concept concept) : super.of(concept); 
 
  PostGen.withId(Concept concept, Blog blog, String title) : super.of(concept) { 
    setParent("blog", blog); 
    setAttribute("title", title); 
  } 
 
  Blog get blog => getParent("blog"); 
  set blog(Blog p) => setParent("blog", p); 
  
  String get title => getAttribute("title"); 
  set title(String a) => setAttribute("title", a); 
  
  String get content => getAttribute("content"); 
  set content(String a) => setAttribute("content", a); 
  
  DateTime get creationDate => getAttribute("creationDate"); 
  set creationDate(DateTime a) => setAttribute("creationDate", a); 
  
  Post newEntity() => new Post(concept); 
  Posts newEntities() => new Posts(concept); 
  
  int titleCompareTo(Post other) { 
    return title.compareTo(other.title); 
  } 
 
} 
 
abstract class PostsGen extends Entities<Post> { 
 
  PostsGen(Concept concept) : super.of(concept); 
 
  Posts newEntities() => new Posts(concept); 
  Post newEntity() => new Post(concept); 
  
} 
 
