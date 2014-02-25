 
// test/social/blogging/social_blogging_test.dart 
 
import "package:unittest/unittest.dart"; 
 
import "package:dartling/dartling.dart"; 
 
import "package:social_blogging/social_blogging.dart"; 
 
testSocialBlogging(Repo repo, String domainCode, String modelCode) { 
  var models; 
  var session; 
  var entries; 
  group("Testing ${domainCode}.${modelCode}", () { 
    setUp(() { 
      models = repo.getDomainModels(domainCode); 
      session = models.newSession(); 
      entries = models.getModelEntries(modelCode); 
      expect(entries, isNotNull); 
 
 
    }); 
    tearDown(() { 
      entries.clear(); 
    }); 
    test("Empty Entries Test", () { 
      expect(entries.isEmpty, isTrue); 
    }); 
 
  }); 
} 
 
testSocialData(SocialRepo socialRepo) { 
  testSocialBlogging(socialRepo, SocialRepo.socialDomainCode, 
      SocialRepo.socialBloggingModelCode); 
} 
 
void main() { 
  var socialRepo = new SocialRepo(); 
  testSocialData(socialRepo); 
} 
 
