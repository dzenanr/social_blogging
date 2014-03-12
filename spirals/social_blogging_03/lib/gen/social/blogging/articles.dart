part of social_blogging; 
 
// lib/gen/social/blogging/articles.dart 
 
abstract class ArticleGen extends ConceptEntity<Article> { 
 
  ArticleGen(Concept concept) : super.of(concept) { 
    Concept tagConcept = concept.model.concepts.singleWhereCode("Tag"); 
    setChild("tags", new Tags(tagConcept)); 
  } 
 
  ArticleGen.withId(Concept concept, Blog blog, String title) : super.of(concept) { 
    setParent("blog", blog); 
    setAttribute("title", title); 
    Concept tagConcept = concept.model.concepts.singleWhereCode("Tag"); 
    setChild("tags", new Tags(tagConcept)); 
  } 
 
  Reference get blogReference => getReference("blog"); 
  set blogReference(Reference reference) => setReference("blog", reference); 
  
  Blog get blog => getParent("blog"); 
  set blog(Blog p) => setParent("blog", p); 
  
  String get title => getAttribute("title"); 
  set title(String a) => setAttribute("title", a); 
  
  String get content => getAttribute("content"); 
  set content(String a) => setAttribute("content", a); 
  
  DateTime get creationDate => getAttribute("creationDate"); 
  set creationDate(DateTime a) => setAttribute("creationDate", a); 
  
  Tags get tags => getChild("tags"); 
  
  Article newEntity() => new Article(concept); 
  Articles newEntities() => new Articles(concept); 
  
  int titleCompareTo(Article other) { 
    return title.compareTo(other.title); 
  } 
 
} 
 
abstract class ArticlesGen extends Entities<Article> { 
 
  ArticlesGen(Concept concept) : super.of(concept); 
 
  Articles newEntities() => new Articles(concept); 
  Article newEntity() => new Article(concept); 
  
} 
 
