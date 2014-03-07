 
// web/social/blogging/social_blogging_web.dart 
 
import "dart:html"; 
  
import "package:dartling_default_app/dartling_default_app.dart"; 
 
import "package:social_blogging/social_blogging.dart";
 
initSocialData(SocialRepo socialRepo) { 
   var socialModels = 
       socialRepo.getDomainModels(SocialRepo.socialDomainCode); 
 
   var socialBloggingEntries = 
       socialModels.getModelEntries(SocialRepo.socialBloggingModelCode); 
   initSocialBlogging(socialBloggingEntries); 
   socialBloggingEntries.display(); 
} 
 
showSocialData(SocialRepo socialRepo) { 
   var mainView = new View(document, "main"); 
   mainView.repo = socialRepo; 
   new RepoMainSection(mainView); 
} 
 
void main() { 
  var socialRepo = new SocialRepo(); 
  initSocialData(socialRepo); 
  showSocialData(socialRepo); 
} 
 
