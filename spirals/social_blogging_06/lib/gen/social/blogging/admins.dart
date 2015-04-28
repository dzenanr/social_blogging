part of social_blogging; 
 
// lib/gen/social/blogging/admins.dart 
 
abstract class AdminGen extends ConceptEntity<Admin> { 
 
  AdminGen(Concept concept) {
    this.concept = concept;
  }
 
  AdminGen.withId(Concept concept, User isUser) { 
    this.concept = concept;
    setParent("isUser", isUser); 
  } 
 
  Reference get isUserReference => getReference("isUser"); 
  set isUserReference(Reference reference) => setReference("isUser", reference); 
  
  User get isUser => getParent("isUser"); 
  set isUser(User p) => setParent("isUser", p); 
  
  String get privilege => getAttribute("privilege"); 
  set privilege(String a) => setAttribute("privilege", a); 
  
  Admin newEntity() => new Admin(concept); 
  Admins newEntities() => new Admins(concept); 
  
} 
 
abstract class AdminsGen extends Entities<Admin> { 
 
  AdminsGen(Concept concept) {
    this.concept = concept;
  }
 
  Admins newEntities() => new Admins(concept); 
  Admin newEntity() => new Admin(concept); 
  
} 
 
