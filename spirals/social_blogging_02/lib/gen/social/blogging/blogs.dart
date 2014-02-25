part of social_blogging; 
 
// lib/gen/social/blogging/blogs.dart 
 
abstract class BlogGen extends ConceptEntity<Blog> { 
 
  BlogGen(Concept concept) : super.of(concept) { 
    Concept postConcept = concept.model.concepts.singleWhereCode("Post"); 
    setChild("posts", new Posts(postConcept)); 
  } 
 
  BlogGen.withId(Concept concept, Uri link) : super.of(concept) { 
    setAttribute("link", link); 
    Concept postConcept = concept.model.concepts.singleWhereCode("Post"); 
    setChild("posts", new Posts(postConcept)); 
  } 
 
  User get user => getParent("user"); 
  set user(User p) => setParent("user", p); 
  
  Uri get link => getAttribute("link"); 
  set link(Uri a) => setAttribute("link", a); 
  
  String get name => getAttribute("name"); 
  set name(String a) => setAttribute("name", a); 
  
  Posts get posts => getChild("posts"); 
  
  Blog newEntity() => new Blog(concept); 
  Blogs newEntities() => new Blogs(concept); 
  
  int linkCompareTo(Blog other) { 
    return link.toString().compareTo(other.link.toString()); 
  } 
 
} 
 
abstract class BlogsGen extends Entities<Blog> { 
 
  BlogsGen(Concept concept) : super.of(concept); 
 
  Blogs newEntities() => new Blogs(concept); 
  Blog newEntity() => new Blog(concept); 
  
} 
 
