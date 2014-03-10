part of social_blogging; 
 
// lib/gen/social/blogging/entries.dart 
 
class BloggingEntries extends ModelEntries { 
 
  BloggingEntries(Model model) : super(model); 
 
  Map<String, Entities> newEntries() { 
    var entries = new Map<String, Entities>(); 
    var concept; 
    concept = model.concepts.singleWhereCode("Blog"); 
    entries["Blog"] = new Blogs(concept); 
    concept = model.concepts.singleWhereCode("User"); 
    entries["User"] = new Users(concept); 
    return entries; 
  } 
 
  Entities newEntities(String conceptCode) { 
    var concept = model.concepts.singleWhereCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptError("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Blog") { 
      return new Blogs(concept); 
    } 
    if (concept.code == "Post") { 
      return new Posts(concept); 
    } 
    if (concept.code == "User") { 
      return new Users(concept); 
    } 
    return null; 
  } 
 
  ConceptEntity newEntity(String conceptCode) { 
    var concept = model.concepts.singleWhereCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptError("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Blog") { 
      return new Blog(concept); 
    } 
    if (concept.code == "Post") { 
      return new Post(concept); 
    } 
    if (concept.code == "User") { 
      return new User(concept); 
    } 
    return null; 
  } 
 
  Blogs get blogs => getEntry("Blog"); 
  Users get users => getEntry("User"); 
 
} 
 
