import 'package:amigobot/homePage.dart';
import 'package:amigobot/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';


void main() => runApp(MaterialApp(
  home:Home(),
      debugShowCheckedModeBanner: false,
));

class Home extends StatelessWidget {
  @override
  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.lightGreen[100],
        appBar: AppBar(
             title:Text(
                  'AMIGO',
                   style:TextStyle(fontSize: 20.0,
                       fontWeight: FontWeight.bold,
                        color:Colors.white
                           ),),
          centerTitle:true,
          backgroundColor:Colors.lightGreen,
          ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  child:Image.asset('Assets/amigologo.png',height:200,width:200),
                  padding:EdgeInsets.all(10.0),

                ),
              ),
              SizedBox(height:20.0),
             Container(
               child: Text("Hello. I am Amigo. \nYour personal therapy chatbot.",
                     style:TextStyle(
                     fontSize: 20.0, color: Colors.lightGreen[700],letterSpacing: 2.0

                 ),
               ),



             ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(10),
                child:TextField(
                  controller:nameController,
                  decoration:InputDecoration(
                    border:OutlineInputBorder(),
                    labelText:"UserName",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child:TextField(
                  controller:passwordController,
                  decoration:InputDecoration(
                    border:OutlineInputBorder(),
                    labelText:"Password",

                  ),
                ),
              ),
              FlatButton(
                onPressed:(){//forgot password screen
                  Navigator.push(context,MaterialPageRoute(builder:(context){
                    return ForgotPassword();
                  }));
                   },
                textColor:Colors.lightGreen[700],
                child:Text("Forgot Password? No worries!")
              ),
             Container(
               height:50,
               width:400,
               padding:EdgeInsets.fromLTRB(10,0,10,0),
               child: RaisedButton(

                 color:Colors.lightGreen,
                 child:Text('Login',
                 style:TextStyle(
                   color:Colors.white,
                   fontSize: 15.0,
                   letterSpacing: 2.0,

                 ),
                 ),
                 onPressed:() {
                   //open home page
                   Navigator.push(
                       context, MaterialPageRoute(builder: (context) {
                     return homepage();
                   }));
                 },
                 ),
             ),
              SizedBox(height:15.0),
              Text('OR',
              style:TextStyle(
                fontSize: 15.0,
                letterSpacing: 2.0,
                color:Colors.lightGreen[700],
                fontWeight: FontWeight.bold,
              )),
              SizedBox(height:15.0),
              Container(
                height:50,
                width:400,
                padding:EdgeInsets.fromLTRB(10,0,10,0),
                child: RaisedButton(

                  color:Colors.lightGreen,
                  child:Text('Register',
                    style:TextStyle(
                      color:Colors.white,
                      fontSize: 15.0,
                      letterSpacing: 2.0,

                    ),
                  ),
                  onPressed:()
                  {
                    //sign up page
                    Navigator.push(context,MaterialPageRoute(builder:(context){
                      return signup();
                    }));
                  },
                ),
              ),
                SizedBox(height:15.0),
              Container(
                padding:EdgeInsets.fromLTRB(10,0,10,0),
                child:Text(
                  'amigobot © 2020',
                  style:TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black,
                    color:Colors.white,
                  ),
                ),
              ),
            ],


            ),
        ),



        );




  }
}

class ForgotPassword extends StatelessWidget {
  @override
  TextEditingController emailController=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:Colors.lightGreen[100],
      appBar: AppBar(
        title:Text(
          'Forgot your Password?',
          style:TextStyle(fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color:Colors.white
          ),),
        centerTitle:true,
        backgroundColor:Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child:Column(
          children: <Widget>[
           Text("\n\n\nWe see you forgot your password.\nDon't worry. We will help you reset it using your email.",
           style:TextStyle(
               fontSize: 15.0, color: Colors.lightGreen[700],letterSpacing:0.0,fontWeight: FontWeight.bold,

        )
           ),
           SizedBox(height:20.0),
            Container(
              padding: EdgeInsets.all(10),
              child:TextField(
                controller:emailController,
                decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  labelText:"Email",
                ),
              ),
            ),
            SizedBox(height:16.0),
            Container(
              height:50,
              width:400,
              padding:EdgeInsets.fromLTRB(10,0,10,0),
              child:RaisedButton(

                color:Colors.lightGreen,
                child:Text('Reset my Password',
                  style:TextStyle(
                    color:Colors.white,
                    fontSize: 15.0,
                    letterSpacing: 2.0,

                  ),
                ),
                onPressed:()
                {
                  //print(nameController.text);
                  //print(passwordController.text);
                },
              ),
            )



          ],

        )


      )

    );
  }
}
