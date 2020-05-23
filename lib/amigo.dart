import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:to_string/to_string.dart';

class amigo extends StatefulWidget {
  @override
  _amigoState createState() => _amigoState();
}

class _amigoState extends State<amigo> {

  void response(query) async {
    AuthGoogle authGoogle = await AuthGoogle(
        fileJson: "Assets/amigo-pyhyyy-e2d1db5e1ee9.json").build();
    Dialogflow dialogflow = await Dialogflow(
        authGoogle: authGoogle, language: Language.english);
    AIResponse aiResponse = await dialogflow.detectIntent(query);
    setState(() {
      messages.insert(0, {"data": 0,
        "message": aiResponse.getListMessage()[0]["text"]["text"][0],
      });
    });
  }

  final messageInsert = TextEditingController();
  List<Map> messages = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:Text("AMIGO"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,

      ),
     body:Container(
       color:Colors.lightGreen[100],
       child:Column(
         children: <Widget>[
           Flexible(
             child: ListView.builder(
               reverse:true,
               padding: EdgeInsets.all(10.0),
                 itemCount: messages.length,

                 itemBuilder: (context,index)=>messages[index]["data"]==0
                 ? Padding(
                   padding: const EdgeInsets.fromLTRB(0.0,10.0,150.0,10.0),
                   child: Container(
                     decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(15),
                          topRight:Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
                       boxShadow: [BoxShadow(
                         blurRadius: 20.0,
                         offset: Offset(10,10),
                         color:Colors.black54,
                       )],
                       color:Colors.lightGreen,

                     ),

                       padding: EdgeInsets.all(15.0),

                       child:Text(messages[index]["message"],
                       style:TextStyle(
                         fontSize: 15.0,
                         letterSpacing: 0.5,
                         fontWeight: FontWeight.bold,
                         color:Colors.white,
                       )),

                   ),
                 )

                 : Padding(
                   padding: const EdgeInsets.fromLTRB(150.0,10.0,0.0,10.0),
                   child: Container(


                       decoration: BoxDecoration(


                           borderRadius: BorderRadius.only(
                             topLeft:Radius.circular(15),
                             topRight:Radius.circular(15),
                             bottomLeft: Radius.circular(15),

                           ),
                           boxShadow: [BoxShadow(
                             blurRadius: 20.0,
                             offset: Offset(10,10),
                             color:Colors.black54,
                           )],
                           color:Colors.lightBlue,

                       ),


                       padding: EdgeInsets.all(15.0),










                       child:Text(messages[index]["message"],textAlign: TextAlign.right,
                       softWrap: true,
                       style:TextStyle(
                         fontSize: 15.0,
                         letterSpacing: 0.5,
                         fontWeight: FontWeight.bold,
                         color:Colors.white,

                       )),

                   ),
                 ),
             ),

           ),
           const SizedBox(height:16.0),
           Divider(height: 3.0),
           Container(
             padding:EdgeInsets.only(bottom:10.0),
             margin: const EdgeInsets.symmetric(horizontal: 8.0),
             child: Row(
               children: <Widget>[
                 Flexible(child:TextField(
                  controller: messageInsert,

                   decoration: InputDecoration.collapsed(hintText: "Type"),
                 )),
                 Container(
                   margin:EdgeInsets.symmetric(horizontal: 4.0),
                   child: IconButton(icon: Icon(Icons.send),onPressed:() {
                     if(messageInsert.text.isEmpty)
                       {
                         print("empty message");

                       }
                     else
                       {
                         setState(() {
                           messages.insert(0,{"data":1,"message":messageInsert.text});
                         });
                         response(messageInsert.text);
                         messageInsert.clear();
                       }
                   }),
                 )
               ],
             )
           )
         ],
       )
     )
    );
  }
}
