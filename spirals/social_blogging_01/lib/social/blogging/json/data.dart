part of social_blogging;

// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// lib/social/blogging/json/data.dart

var socialBloggingDataJson = r'''
{
   "domain":"Social",
   "model":"Blogging",
   "entries":[
      {
         "concept":"Blog",
         "entities":[
            {
               "oid":"1393437933969",
               "code":null,
               "link":"http://www.scribegriff.com/studios/",
               "name":"scribeGriff Studios",
               "posts":[
                  {
                     "blog":"1393437933969",
                     "oid":"1393437933973",
                     "code":null,
                     "title":"Today's @NgDirective: Get Up to Speed Using Angular with Dart",
                     "content":"Although I spend most of my time working with Dart using Polymer, \nit's hard not to find the announcement of AngularDart a compelling reason \nto take it out for a spin. And I confess, the more I use Angular with Dart, \nthe more I'm convinced it is going to be a major component of my Dart \ntoolbox for the foreseeable future. I had come across Jesus Rodriguez's \nintroduction to the model driven framework with his appropriately named \nblog post Why Does Angular.js Rock?. In this article, we look at the Dart \nequivalents of the examples Jesus presented.\n  ",
                     "creationDate":"2014-02-26 13:05:33.934"
                  },
                  {
                     "blog":"1393437933969",
                     "oid":"1393437933974",
                     "code":null,
                     "title":"Iterables, Futures, and Future.wait() in Dart",
                     "content":"Several days ago while working with Dart, I was coding up a problem that \nrequired that I iterate over a function that returns its value represented \nas a Future. The variables that I needed to pass to this function were read \nfrom an external file and stored in a List using a Stream. To evaluate the \nfunction for each element in the List, I was tempted to use a simple \nforEach() to pass the elements to the function returning a Future. \n  ",
                     "creationDate":"2014-02-26 13:05:33.934"
                  }
               ]
            },
            {
               "oid":"1393437933976",
               "code":null,
               "link":"http://blog.sethladd.com/",
               "name":"Seth Ladd's Blog",
               "posts":[
                  {
                     "blog":"1393437933969",
                     "oid":"1393437933973",
                     "code":null,
                     "title":"Today's @NgDirective: Get Up to Speed Using Angular with Dart",
                     "content":"Although I spend most of my time working with Dart using Polymer, \nit's hard not to find the announcement of AngularDart a compelling reason \nto take it out for a spin. And I confess, the more I use Angular with Dart, \nthe more I'm convinced it is going to be a major component of my Dart \ntoolbox for the foreseeable future. I had come across Jesus Rodriguez's \nintroduction to the model driven framework with his appropriately named \nblog post Why Does Angular.js Rock?. In this article, we look at the Dart \nequivalents of the examples Jesus presented.\n  ",
                     "creationDate":"2014-02-26 13:05:33.934"
                  }
               ]
            },
            {
               "oid":"1393437933978",
               "code":null,
               "link":"http://dzenanr.github.io/",
               "name":"On Dart",
               "posts":[

               ]
            }
         ]
      }
   ]
}
''';
