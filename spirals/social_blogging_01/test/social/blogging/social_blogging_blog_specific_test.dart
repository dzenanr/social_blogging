
// test/social/blogging/social_blogging_blog_specific_test.dart

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

testSocialBloggingBlog(
    Repository repository, String domainCode, String modelCode) {
  var models;
  var session;
  var entries;
  group("Testing Testing Social.Blogging.Blog", () {
    setUp(() {
      models = repository.getDomainModels(domainCode);
      session = models.newSession();
      entries = models.getModelEntries(modelCode);
      expect(entries, isNotNull);
      entries.init();
    });
    tearDown(() {
      entries.clear();
    });
    test('Add blog required error', () {
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
      blogs.errors.display(title: 'Add blog required rrror');
    });
    test('Add blog unique error', () {
      var blogs = entries.blogs;
      var blogConcept = blogs.concept;
      var blogCount = blogs.length;
      var blog = new Blog(blogConcept);
      expect(blog, isNotNull);
      blog.link = Uri.parse('http://stackoverflow.com/tags/dart');
      blog.name = "My Blog";
      var added = blogs.add(blog);
      expect(added, isFalse);
      expect(blogs.length, equals(blogCount));
      expect(blogs.errors.length, equals(1));
      expect(blogs.errors.toList()[0].category, equals('unique'));
      blogs.errors.display(title: 'Add blog unique error');
    });
    test('Add blog required and unique error', () {
      var blogs = entries.blogs;
      var blogConcept = blogs.concept;
      var blogCount = blogs.length;
      var blog = new Blog(blogConcept);
      expect(blog, isNotNull);
      blog.link = Uri.parse('http://stackoverflow.com/tags/dart');
      var added = blogs.add(blog);
      expect(added, isFalse);
      expect(blogs.length, equals(blogCount));
      expect(blogs.errors.length, equals(2));
      expect(blogs.errors.toList()[0].category, equals('required'));
      expect(blogs.errors.toList()[1].category, equals('unique'));
      blogs.errors.display(title: 'Add blog required and unique error');
    });
    test('Add blog pre validation error', () {
      var blogs = entries.blogs;
      var blogConcept = blogs.concept;
      var blogCount = blogs.length;
      var blog = new Blog(blogConcept);
      expect(blog, isNotNull);
      blog.link = Uri.parse('http://shailen.github.io/');
      blog.name = 'A new blog with a long name that cannot be accepted';
      var added = blogs.add(blog);
      expect(added, isFalse);
      expect(blogs.length, equals(blogCount));
      expect(blogs.errors, hasLength(1));
      expect(blogs.errors.toList()[0].category, equals('pre'));
      blogs.errors.display(title:'Add blog pre validation error');
    });
    test('Blog not found by new oid', () {
      var dartlingOid = new Oid.ts(1345648254063);
      var blogs = entries.blogs;
      Blog blog = blogs.singleWhereOid(dartlingOid);
      expect(blog, isNull);
    });
    test('Find blog by oid in JSON', () {
      var json = entries.fromModelToJson(); 
      var blogs = entries.blogs;
      blogs.clear();
      expect(blogs.isEmpty, isTrue);
      entries.fromJsonToModel(json);
      expect(blogs.isEmpty, isFalse);

      var randomBlog = blogs.random();
      var dartlingOid = randomBlog.oid;
      var blog = blogs.singleWhereOid(dartlingOid);
      expect(blog, isNotNull);
    });
    test('Find blog by id', () {
      var blogs = entries.blogs;
      var blogConcept = blogs.concept;
      Id id = new Id(blogConcept);
      expect(id.length, equals(1));
      var searchLink = Uri.parse('http://stackoverflow.com/tags/dart');
      id.setAttribute('link', searchLink);
      var blog = blogs.singleWhereId(id);
      expect(blog, isNotNull);
      expect(blog.link, equals(searchLink));
    });
    test('Find blog by attribute id', () {
      var blogs = entries.blogs;
      var searchLink = Uri.parse('http://stackoverflow.com/tags/dart');
      var blog = blogs.singleWhereAttributeId('link', searchLink);
      expect(blog, isNotNull);
      expect(blog.link, equals(searchLink));
    });
    test('Find blog by link id', () {
      var blogs = entries.blogs;
      var searchLink = Uri.parse('http://stackoverflow.com/tags/dart');
      var blog = blogs.findByLinkId(searchLink);
      expect(blog, isNotNull);
      expect(blog.link, equals(searchLink));
    });
    test('Select blogs by function', () {
      var blogs = entries.blogs;
      var dartBlogs = blogs.selectWhere((b) => b.onDart);
      expect(dartBlogs.isEmpty, isFalse);
      expect(dartBlogs.length, equals(1));

      dartBlogs.display(title:'Select blogs by function');
    });
    test('Select blogs by function then add', () {
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

      dartBlogs.display(title: 'Select blogs by function then add');
      blogs.display(title:'All Blogs');
    });
    test('Select blogs by function then remove', () {
      var blogs = entries.blogs;
      var blogCount = blogs.length;

      Blogs dartBlogs = blogs.selectWhere((b) => b.onDart);
      expect(dartBlogs.isEmpty, isFalse);
      expect(dartBlogs.source.isEmpty, isFalse);

      var searchLink = Uri.parse('http://stackoverflow.com/tags/dart');
      var blog = dartBlogs.findByLinkId(searchLink);
      expect(blog, isNotNull);
      expect(blog.link, equals(searchLink));
      var dartBlogCount = dartBlogs.length;
      dartBlogs.remove(blog);
      expect(dartBlogs.length, equals(--dartBlogCount));
      expect(blogs.length, equals(--blogCount));
    });
    test('New blog with id', () {
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
    test('True for every blog', () {
      var blogs = entries.blogs;
      expect(blogs.every((b) => b.code == null), isTrue);
      expect(blogs.every((b) => b.name != null), isTrue);
    });
    test('Update new blog id with try', () {
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
    test('Update new blog id without try', () {
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
    test('Copy equality', () {
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
    test('Blog add action undo and redo', () {
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
    test('Blog session undo and redo', () {
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
    test('Blog update undo and redo', () {
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
    test('Undo and redo transaction', () {
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
    test('Undo and redo transaction with error', () {
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
    test('Reactions to blog actions', () {
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

void main() { 
  testSocialBloggingBlog(new Repository(), "Social", "Blogging"); 
} 

