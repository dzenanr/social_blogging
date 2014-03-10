 
// web/social/blogging/social_blogging_web.dart 
 
import "dart:html"; 
 
import "package:dartling_default_app/dartling_default_app.dart"; 
import "package:social_blogging/social_blogging.dart"; 
 
initData(Repository repository) { 
   var socialDomain = repository.getDomainModels("Social"); 
   var bloggingModel = socialDomain.getModelEntries("Blogging"); 
   bloggingModel.init(); 
   //bloggingModel.display(); 
} 
 
showData(Repository repository) { 
   var mainView = new View(document, "main"); 
   mainView.repo = repository; 
   new RepoMainSection(mainView); 
} 
 
void main() { 
  var repository = new Repository(); 
  initData(repository); 
  showData(repository); 
} 
 
