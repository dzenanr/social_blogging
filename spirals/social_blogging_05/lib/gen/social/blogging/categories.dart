part of social_blogging; 
 
// lib/gen/social/blogging/categories.dart 
 
abstract class CategoryGen extends ConceptEntity<Category> { 
 
  CategoryGen(Concept concept) { 
    this.concept = concept;
    Concept tagConcept = concept.model.concepts.singleWhereCode("Tag"); 
    setChild("tags", new Tags(tagConcept)); 
  } 
 
  CategoryGen.withId(Concept concept, String name) { 
    this.concept = concept;
    setAttribute("name", name); 
    Concept tagConcept = concept.model.concepts.singleWhereCode("Tag"); 
    setChild("tags", new Tags(tagConcept)); 
  } 
 
  String get name => getAttribute("name"); 
  set name(String a) => setAttribute("name", a); 
  
  Tags get tags => getChild("tags"); 
  
  Category newEntity() => new Category(concept); 
  Categories newEntities() => new Categories(concept); 
  
  int nameCompareTo(Category other) { 
    return name.compareTo(other.name); 
  } 
 
} 
 
abstract class CategoriesGen extends Entities<Category> { 
 
  CategoriesGen(Concept concept) {
    this.concept = concept;
  }
 
  Categories newEntities() => new Categories(concept); 
  Category newEntity() => new Category(concept); 
  
} 
 
