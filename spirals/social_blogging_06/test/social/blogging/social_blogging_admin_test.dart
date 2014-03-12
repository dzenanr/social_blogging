 
// test/social/blogging/social_blogging_admin_test.dart 
 
import "package:unittest/unittest.dart"; 
//import "package:dartling/dartling.dart"; 
import "package:social_blogging/social_blogging.dart"; 
 
testSocialBloggingAdmin( 
    Repository repository, String domainCode, String modelCode) { 
  var domain; 
  var session; 
  var model; 
  var admins; 
  group("Testing Social.Blogging.Admin", () { 
    domain = repository.getDomainModels(domainCode); 
    session = domain.newSession(); 
    model = domain.getModelEntries(modelCode); 
    expect(model, isNotNull); 
    admins = model.admins; 
    expect(admins.isEmpty, isTrue); 
    setUp(() { 
      model.init(); 
    }); 
    tearDown(() { 
      model.clear(); 
    }); 
 
    test("Not empty model", () { 
      expect(model.isEmpty, isFalse); 
      expect(admins.isEmpty, isFalse); 
    }); 
 
    test("Empty model", () { 
      model.clear(); 
      expect(model.isEmpty, isTrue); 
      expect(admins.isEmpty, isTrue); 
    }); 
 
    test("From model entry to JSON", () { 
      var json = model.fromEntryToJson("Admin"); 
      expect(json, isNotNull); 
 
      print(json); 
      //model.displayEntryJson("Admin"); 
      //model.displayJson(); 
      //model.display(); 
    }); 
 
    test("From JSON to model entry", () { 
      var json = model.fromEntryToJson("Admin"); 
      admins.clear(); 
      expect(admins.isEmpty, isTrue); 
      model.fromJsonToEntry(json); 
      expect(admins.isEmpty, isFalse); 
 
      admins.display(title: "From JSON to model entry"); 
    }); 
 
    test("Add admin required error", () { 
      // no required attribute that is not an id 
    }); 
 
    test("Add admin unique error", () { 
      // no id attribute 
    }); 
 
      // Find admin by required attribute: 
      // no required attribute that is not an id 
 
      // Select admins by required attribute: 
      // no required attribute that is not an id 
 
    test("Sort admins", () { 
      // no id attribute 
      // add compareTo method in the specific Admin class 
      /* 
      admins.sort(); 
 
      //admins.display(title: "Sort admins"); 
      */ 
    }); 
 
    test("Order admins", () { 
      // no id attribute 
      // add compareTo method in the specific Admin class 
      /* 
      var orderedAdmins = admins.order(); 
      expect(orderedAdmins.isEmpty, isFalse); 
      expect(orderedAdmins.length, equals(admins.length)); 
      expect(orderedAdmins.source.isEmpty, isFalse); 
      expect(orderedAdmins.source.length, equals(admins.length)); 
      expect(orderedAdmins, isNot(same(admins))); 
 
      //orderedAdmins.display(title: "Order admins"); 
      */ 
    }); 
 
    test("Copy admins", () { 
      var copiedAdmins = admins.copy(); 
      expect(copiedAdmins.isEmpty, isFalse); 
      expect(copiedAdmins.length, equals(admins.length)); 
      expect(copiedAdmins, isNot(same(admins))); 
      copiedAdmins.forEach((e) => 
        expect(e, equals(admins.singleWhereOid(e.oid)))); 
      copiedAdmins.forEach((e) => 
        expect(e, isNot(same(admins.singleWhereId(e.id))))); 
 
      //copiedAdmins.display(title: "Copy admins"); 
    }); 
 
    test("True for every admin", () { 
      // no required attribute that is not an id 
    }); 
 
    test("Random admin", () { 
      var admin1 = admins.random(); 
      expect(admin1, isNotNull); 
      var admin2 = admins.random(); 
      expect(admin2, isNotNull); 
 
      //admin1.display(prefix: "random1"); 
      //admin2.display(prefix: "random2"); 
    }); 
 
  }); 
} 
 
void main() { 
  testSocialBloggingAdmin(new Repository(), "Social", "Blogging"); 
} 
 
