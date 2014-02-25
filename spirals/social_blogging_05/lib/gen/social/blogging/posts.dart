part of social_blogging; 
 
// lib/gen/social/blogging/posts.dart 
 
abstract class PostGen extends ConceptEntity<Post> { 
 
  PostGen(Concept concept) : super.of(concept) { 
    Concept tagConcept = concept.model.concepts.singleWhereCode("Tag"); 
    setChild("tags", new Tags(tagConcept)); 
  } 
 
  PostGen.withId(Concept concept, Blog blog, String title) : super.of(concept) { 
    setParent("blog", blog); 
    setAttribute("title", title); 
    Concept tagConcept = concept.model.concepts.singleWhereCode("Tag"); 
    setChild("tags", new Tags(tagConcept)); 
  } 
 
  Blog get blog => getParent("blog"); 
  set blog(Blog p) => setParent("blog", p); 
  
  String get title => getAttribute("title"); 
  set title(String a) => setAttribute("title", a); 
  
  String get content => getAttribute("content"); 
  set content(String a) => setAttribute("content", a); 
  
  DateTime get creationDate => getAttribute("creationDate"); 
  set creationDate(DateTime a) => setAttribute("creationDate", a); 
  
  String get medium => getAttribute("medium"); 
  set medium(String a) => setAttribute("medium", a); 
  
  int get plus => getAttribute("plus"); 
  set plus(int a) => setAttribute("plus", a); 
  
  int get minus => getAttribute("minus"); 
  set minus(int a) => setAttribute("minus", a); 
  
  Tags get tags => getChild("tags"); 
  
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
 
