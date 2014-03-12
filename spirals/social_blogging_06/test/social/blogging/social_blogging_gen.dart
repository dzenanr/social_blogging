 
// test/social/blogging/social_blogging_gen.dart 
 
import "package:social_blogging/social_blogging.dart"; 
 
genCode(Repository repository) { 
  repository.gen("social_blogging"); 
} 
 
initData(Repository repository) { 
   var socialDomain = repository.getDomainModels("Social"); 
   var bloggingModel = socialDomain.getModelEntries("Blogging"); 
   bloggingModel.init(); 
   //bloggingModel.display(); 
} 
 
void main() { 
  var repository = new Repository(); 
  genCode(repository); 
  //initData(repository); 
} 
 
