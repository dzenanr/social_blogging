part of social_blogging; 
 
// lib/social/blogging/followings.dart 
 
class Following extends FollowingGen { 
 
  Following(Concept concept) : super(concept); 
 
  Following.withId(Concept concept, User followedBy, User follows) : 
    super.withId(concept, followedBy, follows); 
 
} 
 
class Followings extends FollowingsGen { 
 
  Followings(Concept concept) : super(concept); 
 
} 
 
