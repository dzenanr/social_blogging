part of social_blogging; 
 
// lib/social/blogging/users.dart 
 
class User extends UserGen { 
 
  User(Concept concept) : super(concept); 
 
  User.withId(Concept concept, String name) : 
    super.withId(concept, name); 
 
} 
 
class Users extends UsersGen { 
 
  Users(Concept concept) : super(concept); 
 
} 
 
