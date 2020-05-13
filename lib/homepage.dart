import 'package:flutter/material.dart';


class homepage extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.lightGreen,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
          child: HomePage(),
        ),
      ),
    );

  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _agreedToTOS = true;

  @override
  Widget build(BuildContext context) {
    return


         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('Assets/almas.png'),
                radius: 70.0,
              ),

            ),
            SizedBox(height:16.0),
            Center(
              child: Text(
                'Almasfiza Shaikh',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color:Colors.lightGreen[700],
                  letterSpacing: 1.5,
                )
              ),
            ),
            Divider(
              height:60.0,
              color:Colors.lightGreen[700],
            ),
            Row(
              children: <Widget>[
                SizedBox(width:20.0),
                Container(
                    height:150,
                    width:150,
                    child: RaisedButton(
                      color:Colors.lightGreen,
                      child:Text('Amigo',
                        style:TextStyle(
                          color:Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      onPressed:()
                      {
                        //chat room

                      },
                    )

                ),
                SizedBox(width:30.0),
                Container(
                    height:150,
                    width:150,
                    child: RaisedButton(
                      color:Colors.lightGreen,
                      child:Text('Stats',
                        style:TextStyle(
                          color:Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      onPressed:()
                      {
                        //chat room

                      },
                    )
                ),


              ],
            ),
            SizedBox(height:30.0),
            Row(
              children: <Widget>[
                SizedBox(width:20.0),
                Container(
                    height:150,
                    width:150,
                    child: RaisedButton(
                      color:Colors.lightGreen,
                      child:Text('Therapist',
                        style:TextStyle(
                          color:Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      onPressed:()
                      {
                        //chat room

                      },
                    )

                ),
                SizedBox(width:30.0),
                Container(
                    height:150,
                    width:150,
                    child: RaisedButton(
                      color:Colors.lightGreen,
                      child:Text('Settings',
                        style:TextStyle(
                          color:Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      onPressed:()
                      {
                        //chat room

                      },
                    )
                ),


              ],
            )





          ],
        );






  }
}

