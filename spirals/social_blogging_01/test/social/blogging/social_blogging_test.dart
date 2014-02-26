
// test/social/blogging/social_blogging_test.dart

import "package:unittest/unittest.dart";
import "package:dartling/dartling.dart";
import "package:social_blogging/social_blogging.dart";

class BlogReaction implements ActionReactionApi {
  bool reactedOnAdd = false;
  bool reactedOnUpdate = false;

  react(BasicAction action) {
    if (action is EntitiesAction) {
      reactedOnAdd = true;
    } else if (action is EntityAction) {
      reactedOnUpdate = true;
    }
  }
}

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
      initSocialBlogging(entries);
    });
    tearDown(() {
      entries.clear();
      var blogs = entries.blogs;
      expect(blogs.isEmpty, isTrue);
    });
    test("Not Empty Entries Test", () {
      expect(entries.isEmpty, isFalse);
    });
    test("Empty Entries Test", () {
      entries.clear();
      expect(entries.isEmpty, isTrue);
    });
    test('From Model to JSON', () {
      var json = entries.toJson();
      expect(json, isNotNull);

      print(json);
    });
    test('From JSON to Model', () {
      var blogs = entries.blogs;
      blogs.clear();
      expect(blogs.isEmpty, isTrue);
      entries.fromJsonToData();
      expect(blogs.isEmpty, isFalse);

      blogs.display(title: 'From JSON to Project Model');
    });
    test('Add Blog Required Error', () {
      var blogs = entries.blogs;
      var blogConcept = blogs.concept;
      var blogCount = blogs.length;
      var blog = new Blog(blogConcept);
      blog.link = Uri.parse('http://phylotic.blogspot.co.uk/');
      expect(blog, isNotNull);
      var added = blogs.add(blog);
      expect(added, isFalse);
      expect(blogs.length, equals(blogCount));
      expect(blogs.errors.length, equals(1));
      expect(blogs.errors.toList()[0].category, equals('required'));
      blogs.errors.display(title: 'Add Blog Required Error');
    });
    test('Add Blog Unique Error', () {
      var blogs = entries.blogs;
      var blogConcept = blogs.concept;
      var blogCount = blogs.length;
      var blog = new Blog(blogConcept);
      expect(blog, isNotNull);
      blog.link = Uri.parse('http://dzenanr.github.io/');
      blog.name = "My Blog";
      var added = blogs.add(blog);
      expect(added, isFalse);
      expect(blogs.length, equals(blogCount));
      expect(blogs.errors.length, equals(1));
      expect(blogs.errors.toList()[0].category, equals('unique'));
      blogs.errors.display(title: 'Add Blog Unique Error');
    });
    test('Add Blog Required and Unique Error', () {
      var blogs = entries.blogs;
      var blogConcept = blogs.concept;
      var blogCount = blogs.length;
      var blog = new Blog(blogConcept);
      expect(blog, isNotNull);
      blog.link = Uri.parse('http://dzenanr.github.io/');
      var added = blogs.add(blog);
      expect(added, isFalse);
      expect(blogs.length, equals(blogCount));
      expect(blogs.errors.length, equals(2));
      expect(blogs.errors.toList()[0].category, equals('required'));
      expect(blogs.errors.toList()[1].category, equals('unique'));
      blogs.errors.display(title: 'Add Blog Required and Unique Error');
    });
    test('Add Blog Pre Validation Error', () {
      var blogs = entries.blogs;
      var blogConcept = blogs.concept;
      var blogCount = blogs.length;
      var blog = new Blog(blogConcept);
      expect(blog, isNotNull);
      blog.link = Uri.parse('http://shailen.github.io/');
      blog.name =
          'A new blog with a long name that cannot be accepted';
      var added = blogs.add(blog);
      expect(added, isFalse);
      expect(blogs.length, equals(blogCount));
      expect(blogs.errors, hasLength(1));
      expect(blogs.errors.toList()[0].category, equals('pre'));
      blogs.errors.display(title:'Add Blog Pre Validation');
    });
    test('Not Find Blog by New Oid', () {
      var dartlingOid = new Oid.ts(1393437933976);
      var blogs = entries.blogs;
      Blog blog = blogs.singleWhereOid(dartlingOid);
      expect(blog, isNull);
    });
    /*
    test('Find Blog by Oid in JSON', () {
      var blogs = entries.blogs;
      blogs.clear();
      expect(blogs.isEmpty, isTrue);
      entries.fromJsonToData();
      expect(blogs.isEmpty, isFalse);

      var dartlingOid = new Oid.ts(1393425386488);
      var blog = blogs.singleWhereOid(dartlingOid);
      expect(blog, isNotNull);
      expect(blog.name, equals("Seth Ladd's Blog"));
    });
    */
    test('Find Blog by Id', () {
      var blogs = entries.blogs;
      var blogConcept = blogs.concept;
      Id id = new Id(blogConcept);
      expect(id.length, equals(1));
      var searchLink = Uri.parse('http://dzenanr.github.io/');
      id.setAttribute('link', searchLink);
      var blog = blogs.singleWhereId(id);
      expect(blog, isNotNull);
      expect(blog.link, equals(searchLink));
    });
    test('Find Blog by Attribute Id', () {
      var blogs = entries.blogs;
      var searchLink = Uri.parse('http://dzenanr.github.io/');
      var blog = blogs.singleWhereAttributeId('link', searchLink);
      expect(blog, isNotNull);
      expect(blog.link, equals(searchLink));
    });
    test('Find Blog by Link Id', () {
      var blogs = entries.blogs;
      var searchLink = Uri.parse('http://dzenanr.github.io/');
      var blog = blogs.findByLinkId(searchLink);
      expect(blog, isNotNull);
      expect(blog.link, equals(searchLink));
    });
    test('Find blog and (not) post by title', () {
      var blogs = entries.blogs;
      var blogName = "Seth Ladd's Blog";
      Blog blog = blogs.firstWhereAttribute('name', blogName);

      var postTitle = "Get Up to Speed Using Angular with Dart";
      Posts posts = blog.posts;
      Post post = posts.firstWhereAttribute('title', postTitle);
      expect(post, isNull);
    });
    test('Find blog and post by title', () {
      var blogs = entries.blogs;
      var blogName = "Seth Ladd's Blog";
      Blog blog = blogs.firstWhereAttribute('name', blogName);

      var postTitle =
        "Today's @NgDirective: Get Up to Speed Using Angular with Dart";
      Posts posts = blog.posts;
      Post post = posts.firstWhereAttribute('title', postTitle);
      expect(post, isNotNull);
    });
    /*
    test('Find blog and post by id', () {
      var blogs = entries.blogs;
      var blogName = "Seth Ladd's Blog";
      Blog blog = blogs.firstWhereAttribute('name', blogName);

      var postTitle =
        "Today's @NgDirective: Get Up to Speed Using Angular with Dart";
      Posts posts = blog.posts;
      Id id = new Id(posts.concept);
      id.setParent('blog', blog);
      id.setAttribute('title', postTitle);
      //print('post id: ${id.toString()}');
      Post post = posts.singleWhereId(id);
      //Post post = posts.findById(blog, postTitle);
      expect(post, isNotNull);
    });
    */
    test('Select Blogs by Function', () {
      var blogs = entries.blogs;
      var dartBlogs = blogs.selectWhere((b) => b.onDart);
      expect(dartBlogs.isEmpty, isFalse);
      expect(dartBlogs.length, equals(1));

      dartBlogs.display(title:'Select Projects by Function');
    });
    test('Select Blogs by Function then Add', () {
      var blogs = entries.blogs;
      var dartBlogs = blogs.selectWhere((b) => b.onDart);
      expect(dartBlogs.isEmpty, isFalse);
      expect(dartBlogs.source.isEmpty, isFalse);

      var blogConcept = blogs.concept;
      var dartBlog = new Blog(blogConcept);
      dartBlog.link = Uri.parse('http://shailen.github.io/');
      dartBlog.name = 'Dartwatch';
      var added = dartBlogs.add(dartBlog);
      expect(added, isTrue);

      dartBlogs.display(title: 'Select Blogs by Function then Add');
      blogs.display(title:'All Blogs');
    });
    test('Select Projects by Function then Remove', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;

      Blogs dartBlogs = blogs.selectWhere((b) => b.onDart);
      expect(dartBlogs.isEmpty, isFalse);
      expect(dartBlogs.source.isEmpty, isFalse);

      var searchLink = Uri.parse('http://dzenanr.github.io/');
      var blog = dartBlogs.findByLinkId(searchLink);
      expect(blog, isNotNull);
      expect(blog.link, equals(searchLink));
      var dartBlogCount = dartBlogs.length;
      dartBlogs.remove(blog);
      expect(dartBlogs.length, equals(--dartBlogCount));
      expect(blogs.length, equals(--blogCount));
    });
    test('Order Blogs by Name', () {
      var blogs = entries.blogs;
      var orderedBlogs = blogs.order();
      expect(orderedBlogs.isEmpty, isFalse);
      expect(orderedBlogs.length, equals(blogs.length));
      expect(orderedBlogs.source.isEmpty, isFalse);
      expect(orderedBlogs.source.length, equals(blogs.length));

      orderedBlogs.display(title: 'Order Blogs by Name');
    });
    test('New Blog with Id', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;
      var blogLink = Uri.parse('http://shailen.github.io/');
      var blog = new Blog.withId(blogConcept, blogLink);
      expect(blog, isNotNull);
      blog.name = "Shailen Tuli's blog";
      var added = blogs.add(blog);
      expect(added, isTrue);
      expect(blogs.length, equals(++blogCount));

      blog.display(prefix: 'New blog with id: ');
    });
    test('Copy Blogs', () {
      var blogs = entries.blogs;
      var copiedBlogs = blogs.copy();
      expect(copiedBlogs.isEmpty, isFalse);
      expect(copiedBlogs.length, equals(blogs.length));
      expect(copiedBlogs, isNot(same(blogs)));
      copiedBlogs.forEach((cp) =>
          expect(cp, equals(blogs.singleWhereOid(cp.oid))));
      copiedBlogs.forEach((cp) =>
          expect(cp, isNot(same(blogs.singleWhereId(cp.id)))));

      copiedBlogs.display(title: 'Copied Blogs');
    });
    test('True for Every Blog', () {
      var blogs = entries.blogs;
      expect(blogs.every((b) => b.code == null), isTrue);
      expect(blogs.every((b) => b.name != null), isTrue);
    });
    test('Update New Blog Id with Try', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;
      var blogLink = Uri.parse('http://shailen.github.io/');
      var blog = new Blog.withId(blogConcept, blogLink);
      expect(blog, isNotNull);
      blog.name = "Shailen Tuli's blog";
      blogs.add(blog);
      expect(blogs.length, equals(++blogCount));

      var beforeLinkUpdate = blog.link;
      try {
        blog.link = Uri.parse('http://japhr.blogspot.ca/search/label/dartlang');
      } on UpdateError catch (e) {
        expect(blog.link, equals(beforeLinkUpdate));
      }
    });
    test('Update New Blog Id without Try', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;
      var blogLink = Uri.parse('http://shailen.github.io/');
      var blog = new Blog.withId(blogConcept, blogLink);
      expect(blog, isNotNull);
      blog.name = "Shailen Tuli's blog";
      blogs.add(blog);
      expect(blogs.length, equals(++blogCount));

      var beforeLinkUpdate = blog.link;
      expect(() => blog.link =
          Uri.parse('http://japhr.blogspot.ca/search/label/dartlang'), throws);
      expect(blog.link, equals(beforeLinkUpdate));
    });
    test('Copy Equality', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;
      var blogLink = Uri.parse('http://shailen.github.io/');
      var blog = new Blog.withId(blogConcept, blogLink);
      expect(blog, isNotNull);
      blog.name = "Shailen Tuli's blog";
      blogs.add(blog);
      expect(blogs.length, equals(++blogCount));

      blog.display(prefix: 'before copy: ');
      var blogCopy = blog.copy();
      blogCopy.display(prefix: 'after copy: ');
      expect(blog, equals(blogCopy));
      expect(blog.oid, equals(blogCopy.oid));
      expect(blog.code, equals(blogCopy.code));
      expect(blog.link, equals(blogCopy.link));
      expect(blog.name, equals(blogCopy.name));


      expect(blog.id, isNotNull);
      expect(blogCopy.id, isNotNull);
      expect(blog.id, equals(blogCopy.id));

      var idsEqual = false;
      if (blog.id == blogCopy.id) {
        idsEqual = true;
      }
      expect(idsEqual, isTrue);

      idsEqual = false;
      if (blog.id.equals(blogCopy.id)) {
        idsEqual = true;
      }
      expect(idsEqual, isTrue);
    });
    test('Random Entity', () {
      var blogs = entries.blogs;
      var blog1 = blogs.random();
      expect(blog1, isNotNull);
      var blog2 = blogs.random();
      expect(blog2, isNotNull);

      blog1.display(prefix: '1');
      blog2.display(prefix: '2');
    });
    test('Blog Add Action Undo and Redo', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;
      var blogLink = Uri.parse('http://shailen.github.io/');
      var blog = new Blog.withId(blogConcept, blogLink);
      expect(blog, isNotNull);
      blog.name = "Shailen Tuli's blog";
      expect(blog, isNotNull);

      var action = new AddAction(session, blogs, blog);
      action.doit();
      expect(blogs.length, equals(++blogCount));

      action.undo();
      expect(blogs.length, equals(--blogCount));

      action.redo();
      expect(blogs.length, equals(++blogCount));
    });
    test('Blog Session Undo and Redo', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;
      var blogLink = Uri.parse('http://shailen.github.io/');
      var blog = new Blog.withId(blogConcept, blogLink);
      expect(blog, isNotNull);
      blog.name = "Shailen Tuli's blog";

      var action = new AddAction(session, blogs, blog);
      action.doit();
      expect(blogs.length, equals(++blogCount));

      session.past.undo();
      expect(blogs.length, equals(--blogCount));

      session.past.redo();
      expect(blogs.length, equals(++blogCount));
    });
    test('Blog Update Undo and Redo', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;
      var blogLink = Uri.parse('http://shailen.github.io/');
      var blog = new Blog.withId(blogConcept, blogLink);
      expect(blog, isNotNull);
      blog.name = "Shailen Tuli's blog";

      var addAction = new AddAction(session, blogs, blog);
      addAction.doit();
      expect(blogs.length, equals(++blogCount));

      var setAction =
          new SetAttributeAction(session, blog, 'name', 'Shailen Tuli');
      setAction.doit();

      session.past.undo();
      expect(blog.name, equals(setAction.before));

      session.past.redo();
      expect(blog.name, equals(setAction.after));

      session.past.undo();
      expect(blog.name, equals(setAction.before));

      session.past.undo();
      expect(blogs.length, equals(--blogCount));
    });
    test('Undo and Redo Transaction', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;

      var blog1 = new Blog(blogConcept);
      blog1.link = Uri.parse('http://shailen.github.io/');
      blog1.name = "Shailen Tuli's blog";
      var action1 = new AddAction(session, blogs, blog1);

      var blog2 = new Blog(blogConcept);
      blog2.link = Uri.parse('http://phylotic.blogspot.co.uk/');
      blog2.name = "phylotic connections";
      var action2 = new AddAction(session, blogs, blog2);

      var transaction = new Transaction('two adds on blogs', session);
      transaction.add(action1);
      transaction.add(action2);
      transaction.doit();
      blogCount = blogCount + 2;
      expect(blogs.length, equals(blogCount));

      blogs.display(title: 'Transaction Done');

      session.past.undo();
      blogCount = blogCount - 2;
      expect(blogs.length, equals(blogCount));

      blogs.display(title: 'Transaction Undone');

      session.past.redo();
      blogCount = blogCount + 2;
      expect(blogs.length, equals(blogCount));

      blogs.display(title:'Transaction Redone');
    });
    test('Undo and Redo Transaction with Error', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;

      var blog1 = new Blog(blogConcept);
      blog1.link = Uri.parse('http://shailen.github.io/');
      blog1.name = "Shailen Tuli's blog";
      var action1 = new AddAction(session, blogs, blog1);

      var blog2 = new Blog(blogConcept);
      blog2.link = Uri.parse('http://phylotic.blogspot.co.uk/');
      //blog2.name = "phylotic connections";
      var action2 = new AddAction(session, blogs, blog2);

      var transaction =
        new Transaction('two adds with an error on the second', session);
      transaction.add(action1);
      transaction.add(action2);
      var done = transaction.doit();
      expect(done, isFalse);
      expect(blogs.length, equals(blogCount));
    });
    test('Reactions to Project Actions', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;
      var blogConcept = blogs.concept;

      var reaction = new BlogReaction();
      expect(reaction, isNotNull);

      models.startActionReaction(reaction);
      var blog = new Blog(blogConcept);
      blog.link = Uri.parse('http://www.johnmccutchan.com/');
      blog.name = "John McCutchan";

      var addAction = new AddAction(session, blogs, blog);
      addAction.doit();
      expect(blogs.length, equals(++blogCount));
      expect(reaction.reactedOnAdd, isTrue);

      var name = 'Dart, Performance, WebGL & GameDev';
      var setAttributeAction =
          new SetAttributeAction(session, blog, 'name', name);
      setAttributeAction.doit();
      expect(reaction.reactedOnUpdate, isTrue);
      models.cancelActionReaction(reaction);
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