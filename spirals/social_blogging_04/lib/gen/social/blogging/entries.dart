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
    concept = model.concepts.singleWhereCode("Category"); 
    entries["Category"] = new Categories(concept); 
    concept = model.concepts.singleWhereCode("Comment"); 
    entries["Comment"] = new Comments(concept); 
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
    if (concept.code == "Article") { 
      return new Articles(concept); 
    } 
    if (concept.code == "User") { 
      return new Users(concept); 
    } 
    if (concept.code == "Category") { 
      return new Categories(concept); 
    } 
    if (concept.code == "Tag") { 
      return new Tags(concept); 
    } 
    if (concept.code == "Comment") { 
      return new Comments(concept); 
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
    if (concept.code == "Article") { 
      return new Article(concept); 
    } 
    if (concept.code == "User") { 
      return new User(concept); 
    } 
    if (concept.code == "Category") { 
      return new Category(concept); 
    } 
    if (concept.code == "Tag") { 
      return new Tag(concept); 
    } 
    if (concept.code == "Comment") { 
      return new Comment(concept); 
    } 
  return null; 
  } 
 
  fromJsonToData() { 
    fromJson(socialBloggingDataJson); 
  } 
 
  Blogs get blogs => getEntry("Blog"); 
  Users get users => getEntry("User"); 
  Categories get categories => getEntry("Category"); 
  Comments get comments => getEntry("Comment"); 
 
} 
 
