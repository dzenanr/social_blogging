 
// test/social/blogging/social_blogging_user_test.dart 
 
import "package:test/test.dart"; 
//import "package:dartling/dartling.dart"; 
import "package:social_blogging/social_blogging.dart"; 
 
testSocialBloggingUser( 
    Repository repository, String domainCode, String modelCode) { 
  var domain; 
  var session; 
  var model; 
  var users; 
  group("Testing Social.Blogging.User", () { 
    domain = repository.getDomainModels(domainCode); 
    session = domain.newSession(); 
    model = domain.getModelEntries(modelCode);  
    users = model.users; 
    setUp(() { 
      model.init(); 
    }); 
    tearDown(() { 
      model.clear(); 
    }); 
 
    test("Not empty model", () { 
      expect(model.isEmpty, isFalse); 
      expect(users.isEmpty, isFalse); 
    }); 
 
    test("Empty model", () { 
      model.clear(); 
      expect(model.isEmpty, isTrue); 
      expect(users.isEmpty, isTrue); 
    }); 
 
    test("From model entry to JSON", () { 
      var json = model.fromEntryToJson("User"); 
      expect(json, isNotNull); 
 
      print(json); 
      //model.displayEntryJson("User"); 
      //model.displayJson(); 
      //model.display(); 
    }); 
 
    test("From JSON to model entry", () { 
      var json = model.fromEntryToJson("User"); 
      users.clear(); 
      expect(users.isEmpty, isTrue); 
      model.fromJsonToEntry(json); 
      expect(users.isEmpty, isFalse); 
 
      users.display(title: "From JSON to model entry"); 
    }); 
 
    test("Add user required error", () { 
      var userConcept = users.concept; 
      var userCount = users.length; 
      var user = new User(userConcept); 
      var added = users.add(user); 
      expect(added, isFalse); 
      expect(users.length, equals(userCount)); 
      expect(users.errors.length, greaterThan(0)); 
      expect(users.errors.toList()[0].category, equals("required")); 
 
      users.errors.display(title: "Add user required error"); 
    }); 
 
    test("Add user unique error", () { 
      var userConcept = users.concept; 
      var userCount = users.length; 
      var user = new User(userConcept); 
      var randomUser = users.random(); 
      user.name = randomUser.name; 
      var added = users.add(user); 
      expect(added, isFalse); 
      expect(users.length, equals(userCount)); 
      expect(users.errors.length, greaterThan(0)); 
 
      users.errors.display(title: "Add user unique error"); 
    }); 
 
    test("Find user by password", () { 
      var randomUser = users.random(); 
      var userPassword = randomUser.password; 
      User user = users.firstWhereAttribute("password", userPassword); 
      expect(user, isNotNull); 
    }); 
 
    test("Select users by password", () { 
      var randomUser = users.random(); 
      var userPassword = randomUser.password; 
      var selectedUsers = users.selectWhereAttribute("password", userPassword); 
      expect(selectedUsers.isEmpty, isFalse); 
 
      //selectedUsers.display(title: "Select users by password"); 
    }); 
 
    test("Sort users", () { 
      users.sort(); 
 
      //users.display(title: "Sort users"); 
    }); 
 
    test("Order users", () { 
      var orderedUsers = users.order(); 
      expect(orderedUsers.isEmpty, isFalse); 
      expect(orderedUsers.length, equals(users.length)); 
      expect(orderedUsers.source.isEmpty, isFalse); 
      expect(orderedUsers.source.length, equals(users.length)); 
      expect(orderedUsers, isNot(same(users))); 
 
      //orderedUsers.display(title: "Order users"); 
    }); 
 
    test("Copy users", () { 
      var copiedUsers = users.copy(); 
      expect(copiedUsers.isEmpty, isFalse); 
      expect(copiedUsers.length, equals(users.length)); 
      expect(copiedUsers, isNot(same(users))); 
      copiedUsers.forEach((e) => 
        expect(e, equals(users.singleWhereOid(e.oid)))); 
      copiedUsers.forEach((e) => 
        expect(e, isNot(same(users.singleWhereId(e.id))))); 
 
      //copiedUsers.display(title: "Copy users"); 
    }); 
 
    test("True for every user", () { 
      expect(users.every((e) => e.password != null), isTrue); 
    }); 
 
    test("Random user", () { 
      var user1 = users.random(); 
      expect(user1, isNotNull); 
      var user2 = users.random(); 
      expect(user2, isNotNull); 
 
      //user1.display(prefix: "random1"); 
      //user2.display(prefix: "random2"); 
    }); 
 
  }); 
} 
 
void main() { 
  testSocialBloggingUser(new Repository(), "Social", "Blogging"); 
} 
 
