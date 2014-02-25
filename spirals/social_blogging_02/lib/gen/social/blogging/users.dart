part of social_blogging; 
 
// lib/gen/social/blogging/users.dart 
 
abstract class UserGen extends ConceptEntity<User> { 
 
  UserGen(Concept concept) : super.of(concept) { 
    Concept blogConcept = concept.model.concepts.singleWhereCode("Blog"); 
    setChild("blogs", new Blogs(blogConcept)); 
  } 
 
  UserGen.withId(Concept concept, String name) : super.of(concept) { 
    setAttribute("name", name); 
    Concept blogConcept = concept.model.concepts.singleWhereCode("Blog"); 
    setChild("blogs", new Blogs(blogConcept)); 
  } 
 
  String get name => getAttribute("name"); 
  set name(String a) => setAttribute("name", a); 
  
  String get password => getAttribute("password"); 
  set password(String a) => setAttribute("password", a); 
  
  String get email => getAttribute("email"); 
  set email(String a) => setAttribute("email", a); 
  
  Blogs get blogs => getChild("blogs"); 
  
  User newEntity() => new User(concept); 
  Users newEntities() => new Users(concept); 
  
  int nameCompareTo(User other) { 
    return name.compareTo(other.name); 
  } 
 
} 
 
abstract class UsersGen extends Entities<User> { 
 
  UsersGen(Concept concept) : super.of(concept); 
 
  Users newEntities() => new Users(concept); 
  User newEntity() => new User(concept); 
  
} 
 
