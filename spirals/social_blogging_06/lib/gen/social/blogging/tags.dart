part of social_blogging; 
 
// lib/gen/social/blogging/tags.dart 
 
abstract class TagGen extends ConceptEntity<Tag> { 
 
  TagGen(Concept concept) : super.of(concept); 
 
  TagGen.withId(Concept concept, Category category) : super.of(concept) { 
    setParent("category", category); 
  } 
 
  Article get article => getParent("article"); 
  set article(Article p) => setParent("article", p); 
  
  Category get category => getParent("category"); 
  set category(Category p) => setParent("category", p); 
  
  String get note => getAttribute("note"); 
  set note(String a) => setAttribute("note", a); 
  
  Tag newEntity() => new Tag(concept); 
  Tags newEntities() => new Tags(concept); 
  
} 
 
abstract class TagsGen extends Entities<Tag> { 
 
  TagsGen(Concept concept) : super.of(concept); 
 
  Tags newEntities() => new Tags(concept); 
  Tag newEntity() => new Tag(concept); 
  
} 
 
