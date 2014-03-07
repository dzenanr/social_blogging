part of social_blogging; 
 
// lib/gen/social/models.dart 
 
class SocialModels extends DomainModels { 
 
  SocialModels(Domain domain) : super(domain) { 
    // fromJsonToModel function from dartling/lib/domain/model/transfer.json.dart 
 
    Model model = fromJsonToModel(socialBloggingModelJson, domain, "Blogging"); 
    BloggingModel bloggingModel = new BloggingModel(model); 
    add(bloggingModel); 
 
  } 
 
} 
 
