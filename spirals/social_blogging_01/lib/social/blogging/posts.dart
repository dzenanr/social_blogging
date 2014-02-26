part of social_blogging;

// lib/social/blogging/posts.dart

class Post extends PostGen {

  Post(Concept concept) : super(concept);

  Post.withId(Concept concept, Blog blog, String title) :
    super.withId(concept, blog, title);

}

class Posts extends PostsGen {

  Posts(Concept concept) : super(concept);

  Post findById(Blog blog, String title) {
    Id id = new Id(concept);
    id.setParent('blog', blog);
    id.setAttribute('title', title);
    print('post id: ${id.toString()}');
    Post post = singleWhereId(id);
    return post;
    /*
    return singleWhereId(
        new Id(concept)..
        setParent('blog', blog)..
        setAttribute('title', title));
    */
  }
}

