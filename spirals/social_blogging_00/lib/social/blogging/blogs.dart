part of social_blogging; 
 
// lib/social/blogging/blogs.dart 
 
class Blog extends BlogGen { 
 
  Blog(Concept concept) : super(concept); 
 
  Blog.withId(Concept concept, Uri link) : 
    super.withId(concept, link);
 
  // added after code gen - begin
  
  bool get onDart => name.contains('Dart') ? true : false;
  
  /**
   * Compares two blogs based on their names.
   * If the result is less than 0 then the first entity is less than the second,
   * if it is equal to 0 they are equal and
   * if the result is greater than 0 then the first is greater than the second.
   */
  int compareTo(Blog other) {
    return name.compareTo(other.name);
  }
  
  // added after code gen - end
 
} 
 
class Blogs extends BlogsGen { 
 
  Blogs(Concept concept) : super(concept);
  
  // added after code gen - begin
 
  Blog findByLinkId(Uri link) {
    return singleWhereId(new Id(concept)..setAttribute('link', link));
  }

  bool preAdd(Blog blog) {
    bool validation = super.preAdd(blog);
    if (validation) {
      validation = blog.name.length <= 32;
      if (!validation) {
        var error = new ValidationError('pre');
        error.message =
            '${concept.codePlural}.preAdd rejects the "${blog.name}" '
            'name that is longer than 32.';
        errors.add(error);
      }
    }
    return validation;
  }
  
  // added after code gen - end
 
} 
 
