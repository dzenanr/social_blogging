part of social_blogging; 
 
// lib/social/blogging/admins.dart 
 
class Admin extends AdminGen { 
 
  Admin(Concept concept) : super(concept); 
 
  Admin.withId(Concept concept, User isUser) : 
    super.withId(concept, isUser); 
 
} 
 
class Admins extends AdminsGen { 
 
  Admins(Concept concept) : super(concept); 
 
} 
 
