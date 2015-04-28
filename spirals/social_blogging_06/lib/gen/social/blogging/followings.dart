part of social_blogging; 
 
// lib/gen/social/blogging/followings.dart 
 
abstract class FollowingGen extends ConceptEntity<Following> { 
 
  FollowingGen(Concept concept) {
    this.concept = concept;
  }
 
  FollowingGen.withId(Concept concept, User followedBy, User follows) { 
    this.concept = concept;
    setParent("followedBy", followedBy); 
    setParent("follows", follows); 
  } 
 
  Reference get followedByReference => getReference("followedBy"); 
  set followedByReference(Reference reference) => setReference("followedBy", reference); 
  
  User get followedBy => getParent("followedBy"); 
  set followedBy(User p) => setParent("followedBy", p); 
  
  Reference get followsReference => getReference("follows"); 
  set followsReference(Reference reference) => setReference("follows", reference); 
  
  User get follows => getParent("follows"); 
  set follows(User p) => setParent("follows", p); 
  
  DateTime get date => getAttribute("date"); 
  set date(DateTime a) => setAttribute("date", a); 
  
  Following newEntity() => new Following(concept); 
  Followings newEntities() => new Followings(concept); 
  
} 
 
abstract class FollowingsGen extends Entities<Following> { 
 
  FollowingsGen(Concept concept) {
    this.concept = concept;
  }
 
  Followings newEntities() => new Followings(concept); 
  Following newEntity() => new Following(concept); 
  
} 
 
