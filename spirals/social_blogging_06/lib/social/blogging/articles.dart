part of social_blogging; 
 
// lib/social/blogging/articles.dart 
 
class Article extends ArticleGen { 
 
  Article(Concept concept) : super(concept); 
 
  Article.withId(Concept concept, Blog blog, String title) : 
    super.withId(concept, blog, title); 
 
} 
 
class Articles extends ArticlesGen { 
 
  Articles(Concept concept) : super(concept); 
 
} 
 
