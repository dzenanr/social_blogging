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
        },
        {
            "name":"Post",
            "entry":false,
            "x":319,
            "y":112,
            "width":80,
            "height":80,
            "items":[
                {
                    "sequence":10,
                    "name":"title",
                    "category":"identifier",
                    "type":"String",
                    "init":"",
                    "essential":true,
                    "sensitive":false
                },
                {
                    "sequence":20,
                    "name":"content",
                    "category":"required",
                    "type":"String",
                    "init":"",
                    "essential":false,
                    "sensitive":false
                },
                {
                    "sequence":30,
                    "name":"creationDate",
                    "category":"attribute",
                    "type":"DateTime",
                    "init":"now",
                    "essential":false,
                    "sensitive":false
                }
            ]
        }
    ],
    "lines":[
        {
            "box1Name":"Blog",
            "box2Name":"Post",
            "category":"relationship",
            "internal":true,
            "box1box2Name":"posts",
            "box1box2Min":"0",
            "box1box2Max":"N",
            "box1box2Id":false,
            "box2box1Name":"blog",
            "box2box1Min":"1",
            "box2box1Max":"1",
            "box2box1Id":true
        }
    ]
}
''';
  