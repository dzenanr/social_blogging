part of social_blogging; 
 
// lib/gen/social/blogging/articles.dart 
 
abstract class ArticleGen extends ConceptEntity<Article> { 
 
  ArticleGen(Concept concept) : super.of(concept) { 
    Concept tagConcept = concept.model.concepts.singleWhereCode("Tag"); 
    setChild("tags", new Tags(tagConcept)); 
    Concept commentConcept = concept.model.concepts.singleWhereCode("Comment"); 
    setChild("comments", new Comments(commentConcept)); 
  } 
 
  ArticleGen.withId(Concept concept, Blog blog, String title) : super.of(concept) { 
    setParent("blog", blog); 
    setAttribute("title", title); 
    Concept tagConcept = concept.model.concepts.singleWhereCode("Tag"); 
    setChild("tags", new Tags(tagConcept)); 
    Concept commentConcept = concept.model.concepts.singleWhereCode("Comment"); 
    setChild("comments", new Comments(commentConcept)); 
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
  
  String get medium => getAttribute("medium"); 
  set medium(String a) => setAttribute("medium", a); 
  
  int get plus => getAttribute("plus"); 
  set plus(int a) => setAttribute("plus", a); 
  
  int get minus => getAttribute("minus"); 
  set minus(int a) => setAttribute("minus", a); 
  
  Tags get tags => getChild("tags"); 
  
  Comments get comments => getChild("comments"); 
  
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
 
