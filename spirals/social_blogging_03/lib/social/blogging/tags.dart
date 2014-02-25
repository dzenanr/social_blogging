part of social_blogging; 
 
// lib/social/blogging/tags.dart 
 
class Tag extends TagGen { 
 
  Tag(Concept concept) : super(concept); 
 
  Tag.withId(Concept concept, Category category) : 
    super.withId(concept, category); 
 
} 
 
class Tags extends TagsGen { 
 
  Tags(Concept concept) : super(concept); 
 
} 
 
