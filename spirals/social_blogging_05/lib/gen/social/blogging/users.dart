part of social_blogging; 
 
// lib/gen/social/blogging/users.dart 
 
abstract class UserGen extends ConceptEntity<User> { 
 
  UserGen(Concept concept) { 
    this.concept = concept;
    Concept blogConcept = concept.model.concepts.singleWhereCode("Blog"); 
    setChild("blogs", new Blogs(blogConcept)); 
    Concept followingConcept = concept.model.concepts.singleWhereCode("Following"); 
    setChild("follows", new Followings(followingConcept)); 
    setChild("followedBy", new Followings(followingConcept)); 
  } 
 
  UserGen.withId(Concept concept, String name) { 
    this.concept = concept;
    setAttribute("name", name); 
    Concept blogConcept = concept.model.concepts.singleWhereCode("Blog"); 
    setChild("blogs", new Blogs(blogConcept)); 
    Concept followingConcept = concept.model.concepts.singleWhereCode("Following"); 
    setChild("follows", new Followings(followingConcept)); 
    setChild("followedBy", new Followings(followingConcept)); 
  } 
 
  String get name => getAttribute("name"); 
  set name(String a) => setAttribute("name", a); 
  
  String get password => getAttribute("password"); 
  set password(String a) => setAttribute("password", a); 
  
  String get email => getAttribute("email"); 
  set email(String a) => setAttribute("email", a); 
  
  DateTime get registrationDate => getAttribute("registrationDate"); 
  set registrationDate(DateTime a) => setAttribute("registrationDate", a); 
  
  Blogs get blogs => getChild("blogs"); 
  
  Followings get follows => getChild("follows"); 
  
  Followings get followedBy => getChild("followedBy"); 
  
  User newEntity() => new User(concept); 
  Users newEntities() => new Users(concept); 
  
  int nameCompareTo(User other) { 
    return name.compareTo(other.name); 
  } 
 
} 
 
abstract class UsersGen extends Entities<User> { 
 
  UsersGen(Concept concept) {
    this.concept = concept;
  }
 
  Users newEntities() => new Users(concept); 
  User newEntity() => new User(concept); 
  
} 
 
