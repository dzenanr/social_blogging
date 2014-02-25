part of social_blogging; 
 
// lib/gen/social/blogging/admins.dart 
 
abstract class AdminGen extends ConceptEntity<Admin> { 
 
  AdminGen(Concept concept) : super.of(concept); 
 
  AdminGen.withId(Concept concept, User isUser) : super.of(concept) { 
    setParent("isUser", isUser); 
  } 
 
  User get isUser => getParent("isUser"); 
  set isUser(User p) => setParent("isUser", p); 
  
  String get privilege => getAttribute("privilege"); 
  set privilege(String a) => setAttribute("privilege", a); 
  
  Admin newEntity() => new Admin(concept); 
  Admins newEntities() => new Admins(concept); 
  
} 
 
abstract class AdminsGen extends Entities<Admin> { 
 
  AdminsGen(Concept concept) : super.of(concept); 
 
  Admins newEntities() => new Admins(concept); 
  Admin newEntity() => new Admin(concept); 
  
} 
 
