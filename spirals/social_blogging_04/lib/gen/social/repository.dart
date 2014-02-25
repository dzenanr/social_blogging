part of social_blogging; 
 
// lib/gen/social/repository.dart 
 
class SocialRepo extends Repo { 
 
  static final socialDomainCode = "Social"; 
  static final socialBloggingModelCode = "Blogging"; 
 
  SocialRepo([String code="SocialRepo"]) : super(code) { 
    _initSocialDomain(); 
  } 
 
  _initSocialDomain() { 
    var socialDomain = new Domain(socialDomainCode); 
    domains.add(socialDomain); 
    add(new SocialModels(socialDomain)); 
  } 
 
} 
 
