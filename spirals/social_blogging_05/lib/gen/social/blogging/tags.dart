part of social_blogging; 
 
// lib/gen/social/blogging/tags.dart 
 
abstract class TagGen extends ConceptEntity<Tag> { 
 
  TagGen(Concept concept) : super.of(concept); 
 
  TagGen.withId(Concept concept, Category category) : super.of(concept) { 
    setParent("category", category); 
  } 
 
  Reference get articleReference => getReference("article"); 
  set articleReference(Reference reference) => setReference("article", reference); 
  
  Article get article => getParent("article"); 
  set article(Article p) => setParent("article", p); 
  
  Reference get categoryReference => getReference("category"); 
  set categoryReference(Reference reference) => setReference("category", reference); 
  
  Category get category => getParent("category"); 
  set category(Category p) => setParent("category", p); 
  
  Tag newEntity() => new Tag(concept); 
  Tags newEntities() => new Tags(concept); 
  
} 
 
abstract class TagsGen extends Entities<Tag> { 
 
  TagsGen(Concept concept) : super.of(concept); 
 
  Tags newEntities() => new Tags(concept); 
  Tag newEntity() => new Tag(concept); 
  
} 
 
