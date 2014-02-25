part of social_blogging; 
 
// lib/gen/social/blogging/followings.dart 
 
abstract class FollowingGen extends ConceptEntity<Following> { 
 
  FollowingGen(Concept concept) : super.of(concept); 
 
  FollowingGen.withId(Concept concept, User followedBy, User follows) : super.of(concept) { 
    setParent("followedBy", followedBy); 
    setParent("follows", follows); 
  } 
 
  User get followedBy => getParent("followedBy"); 
  set followedBy(User p) => setParent("followedBy", p); 
  
  User get follows => getParent("follows"); 
  set follows(User p) => setParent("follows", p); 
  
  DateTime get date => getAttribute("date"); 
  set date(DateTime a) => setAttribute("date", a); 
  
  Following newEntity() => new Following(concept); 
  Followings newEntities() => new Followings(concept); 
  
} 
 
abstract class FollowingsGen extends Entities<Following> { 
 
  FollowingsGen(Concept concept) : super.of(concept); 
 
  Followings newEntities() => new Followings(concept); 
  Following newEntity() => new Following(concept); 
  
} 
 
