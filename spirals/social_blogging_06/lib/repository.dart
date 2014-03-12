part of social_blogging; 
 
// lib/repository.dart 
 
class Repository extends Repo { 
 
  static const REPOSITORY = "Repository"; 
 
  Repository([String code=REPOSITORY]) : super(code) { 
    var domain = new Domain("Social"); 
    domains.add(domain); 
    add(new SocialDomain(domain)); 
 
  } 
 
} 
 
