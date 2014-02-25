part of social_blogging;

// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// lib/social/blogging/json/model.dart

var socialBloggingModelJson = r'''
{
    "width":990,
    "height":580,
    "boxes":[
        {
            "name":"Blog",
            "entry":true,
            "x":81,
            "y":65,
            "width":60,
            "height":60,
            "items":[
                {
                    "sequence":10,
                    "name":"link",
                    "category":"identifier",
                    "type":"Uri",
                    "init":"",
                    "essential":true,
                    "sensitive":false
                },
                {
                    "sequence":20,
                    "name":"name",
                    "category":"required",
                    "type":"String",
                    "init":"",
                    "essential":true,
                    "sensitive":false
                }
            ]
        }
    ],
    "lines":[
        
    ]
}
''';
  