part of social_blogging; 
 
// lib/gen/social/models.dart 
 
class SocialModels extends DomainModels { 
 
  SocialModels(Domain domain) : super(domain) { 
    add(fromJsonToBloggingEntries()); 
  } 
 
  BloggingEntries fromJsonToBloggingEntries() { 
    return new BloggingEntries(fromJsonToModel( 
      socialBloggingModelJson, 
      domain, 
      SocialRepo.socialBloggingModelCode)); 
  } 
 
} 
 
