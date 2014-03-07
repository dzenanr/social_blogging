part of social_blogging;

// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// lib/social/blogging/json/data.dart

var socialBloggingDataJson = r'''
{
   "domain":"Social",
   "model":"Blogging",
   "entry":"Blog",
   "entities":[
      {
         "user":{
            "oid":"1394038088669",
            "parent":"User",
            "entry":"User"
         },
         "oid":"1394038088671",
         "code":null,
         "link":"http://www.scribegriff.com/studios/",
         "name":"scribeGriff Studios",
         "posts":[
            {
               "blog":{
                  "oid":"1394038088671",
                  "parent":"Blog",
                  "entry":"Blog"
               },
               "oid":"1394038088673",
               "code":null,
               "title":"Today's @NgDirective: Get Up to Speed Using Angular with Dart",
               "content":"Although I spend most of my time working with Dart using Polymer, \nit's hard not to find the announcement of AngularDart a compelling reason \nto take it out for a spin. And I confess, the more I use Angular with Dart, \nthe more I'm convinced it is going to be a major component of my Dart \ntoolbox for the foreseeable future. I had come across Jesus Rodriguez's \nintroduction to the model driven framework with his appropriately named \nblog post Why Does Angular.js Rock?. In this article, we look at the Dart \nequivalents of the examples Jesus presented.\n  ",
               "creationDate":"2014-03-05 11:48:08.622"
            },
            {
               "blog":{
                  "oid":"1394038088671",
                  "parent":"Blog",
                  "entry":"Blog"
               },
               "oid":"1394038088674",
               "code":null,
               "title":"Iterables, Futures, and Future.wait() in Dart",
               "content":"Several days ago while working with Dart, I was coding up a problem that \nrequired that I iterate over a function that returns its value represented \nas a Future. The variables that I needed to pass to this function were read \nfrom an external file and stored in a List using a Stream. To evaluate the \nfunction for each element in the List, I was tempted to use a simple \nforEach() to pass the elements to the function returning a Future. \n  ",
               "creationDate":"2014-03-05 11:48:08.622"
            }
         ]
      },
      {
         "user":{
            "oid":"1394038088670",
            "parent":"User",
            "entry":"User"
         },
         "oid":"1394038088675",
         "code":null,
         "link":"http://blog.sethladd.com/",
         "name":"Seth Ladd's Blog",
         "posts":[
            {
               "blog":{
                  "oid":"1394038088675",
                  "parent":"Blog",
                  "entry":"Blog"
               },
               "oid":"1394038088676",
               "code":null,
               "title":"Angular and Polymer Data Binding, Together!",
               "content":"Angular, a super heroic MVC framework, and Polymer, polyfills and \nenhancements for custom elements built on top of Web Components, can \nlive harmoniously in the same app. This post shows you how to connect \nAngular-controlled components to Polymer-controlled elements via data \nbinding. And we do it all in Dart.\n  ",
               "creationDate":"2014-03-05 11:48:08.622"
            }
         ]
      },
      {
         "user":{
            "oid":"1394038088668",
            "parent":"User",
            "entry":"User"
         },
         "oid":"1394038088677",
         "code":null,
         "link":"http://dzenanr.github.io/",
         "name":"On Dart",
         "posts":[

         ]
      },
      {
         "user":{
            "oid":"1394038088668",
            "parent":"User",
            "entry":"User"
         },
         "oid":"1394038088678",
         "code":null,
         "link":"http://ridjanod.github.io/",
         "name":"How to Live on $25 000",
         "posts":[
            {
               "blog":{
                  "oid":"1394038088678",
                  "parent":"Blog",
                  "entry":"Blog"
               },
               "oid":"1394038088679",
               "code":null,
               "title":"Live Far Away Wherever You Are",
               "content":"If you live in a rich country, move to a country where people take time and \nsocialize. When you socialize, you have to eat and drink. And if you socialize\na lot, the food and drinks cannot be that expensive.\n  ",
               "creationDate":"2014-03-05 11:48:08.622"
            }
         ]
      }
   ]
}
''';
  