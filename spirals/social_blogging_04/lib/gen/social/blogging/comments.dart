part of social_blogging; 
 
// lib/gen/social/blogging/comments.dart 
 
abstract class CommentGen extends ConceptEntity<Comment> { 
 
  CommentGen(Concept concept) : super.of(concept); 
 
  String get text => getAttribute("text"); 
  set text(String a) => setAttribute("text", a); 
  
  DateTime get date => getAttribute("date"); 
  set date(DateTime a) => setAttribute("date", a); 
  
  String get by => getAttribute("by"); 
  set by(String a) => setAttribute("by", a); 
  
  Comment newEntity() => new Comment(concept); 
  Comments newEntities() => new Comments(concept); 
  
} 
 
abstract class CommentsGen extends Entities<Comment> { 
 
  CommentsGen(Concept concept) : super.of(concept); 
 
  Comments newEntities() => new Comments(concept); 
  Comment newEntity() => new Comment(concept); 
  
} 
 
