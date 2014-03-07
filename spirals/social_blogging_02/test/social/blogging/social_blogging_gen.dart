 
// test/social/blogging/social_blogging_gen.dart 
 
import "package:dartling/dartling.dart"; 
 
import "package:social_blogging/social_blogging.dart"; 
 
genCode() { 
  var repo = new Repo(); 
 
  var socialDomain = new Domain("Social"); 
 
  Model socialBloggingModel = 
      fromJsonToModel(socialBloggingModelJson, socialDomain, "Blogging"); 
 
  repo.domains.add(socialDomain); 
 
  repo.gen("social_blogging"); 
} 
 
initSocialData(SocialRepo socialRepo) { 
   var socialModels = 
       socialRepo.getDomainModels(SocialRepo.socialDomainCode); 
 
   var socialBloggingEntries = 
       socialModels.getModelEntries(SocialRepo.socialBloggingModelCode); 
   initSocialBlogging(socialBloggingEntries); 
   //socialBloggingEntries.display();  
} 
 
void main() { 
  genCode(); 
 
  var socialRepo = new SocialRepo(); 
  initSocialData(socialRepo); 
} 
 
