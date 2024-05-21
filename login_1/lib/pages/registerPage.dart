import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_1/pages/signUpPage.dart';
import 'package:login_1/pages/siteSeen.dart';

class registerPage extends StatefulWidget {
  const registerPage({super.key});

  @override
  State<registerPage> createState() => _registerPageState();
}

class _registerPageState extends State<registerPage> {
  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
        AppBar(title: Text('Registration')),

        body:
        SingleChildScrollView(
          child:
          Container(
            child: Column(
              children: [
                _bgImage(),
                _loginBox(),
                _signIn(context),
                _signUp(context),
              ],
            ),
          ),
        )
    );
  }
}

_signUp(BuildContext context) {

  return Container(
    child:
    Row(
      children: [
        Container(
          decoration:
          BoxDecoration(
            // color: Colors.red,
          ),
          height: 20,
          // color:  Colors.red,
          margin: EdgeInsets.only(top: 50 , left: 40),
          child: Text("Don't have an account?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.grey),),
        ),

        Container(
          height: 20,
          // margin: EdgeInsets.symmetric(horizontal: 90, vertical: 1),
          margin: EdgeInsets.only(top: 40),
          // color: Colors.blue,
          // color: Colors.red,
          child:
          CupertinoButton(
              child: const Text ("ok", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500 ),),
              onPressed: (){
                Navigator.push(
                  context, CupertinoPageRoute(builder: (context) => const signUpPage()),
                );
              }),),
        // Container(
        //     decoration:
        //     BoxDecoration(
        //       color: Colors.red,
        //       borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50),
        //           bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
        //     ),
        //     height: 60,
        //     // alignment: EdgeInsets.all(value),
        //     margin: EdgeInsets.only(top: 60 , left:10),
        //     child:
        //     ElevatedButton(onPressed: (){
        //
        //       Navigator.push(
        //         context  ,
        //         MaterialPageRoute(
        //           builder: (context) => signUpPage(),
        //         ),
        //       );
        //
        //     },
        //       child: const Text('Open Detail'),
        //     )
        //   // Text("Sign-Up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
        // )
      ],
    ),



  );
}

_signIn(BuildContext context) {

  return Container(
    child:
    Container(
      height: 56,
      // width: 130,
      // margin: EdgeInsets.symmetric(horizontal: 90, vertical: 1),
      width: 290,
      margin: EdgeInsets.only(top: 30, right: 30, left: 30),
      decoration: BoxDecoration(
        color: Colors.blue[700],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),

      child:
      Container(
        height: 40,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
        // color: Colors.blue,
        child:
        CupertinoButton(
            child: const Text ('Sign-Up', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            onPressed: (){
              Navigator.push(
                context, CupertinoPageRoute(builder: (context) => const siteSeen()),
              );
            }
        ),
      ),
    ),
  );
}

_loginBox() {

  return Container(
    child:
    Column(
      children: [
        Container(
          height: 50,
          margin: EdgeInsets.only(left: 25, right: 25,top: 30),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  // color: Color(b),
                  offset: Offset(1,1),
                  blurRadius: 10,
                  // spreadRadius: 6,
                ),
              ]
          ),
          child:
          Container(
            padding: EdgeInsets.only(top: 12),
            margin: EdgeInsets.only(right: 20, left: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter your name",
              ),
            ),
          ),
        ),

        Container(
          height: 50,
          margin: EdgeInsets.only(top: 25, right: 25, left: 25),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10) ),
              boxShadow: [
                BoxShadow(
                  // color: Color(0xFFd8dbe0),
                  offset: Offset(1,1),
                  blurRadius: 10,
                  // spreadRadius: 6,
                )
              ]
          ),
          child:
          Container(
            // height: 60,
            padding: EdgeInsets.only(top: 12),
            margin: EdgeInsets.only(right: 20, left: 20),
            // margin: EdgeInsets.only(),
            child:
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your email",
              ),

            ),
          ),
        ),


        Container(
          height: 50,
          margin: EdgeInsets.only(top: 25, right: 25, left: 25),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10) ),
              boxShadow: [
                BoxShadow(
                  // color: Color(0xFFd8dbe0),
                  offset: Offset(1,1),
                  blurRadius: 10,
                  // spreadRadius: 6,
                )
              ]
          ),
          child:
          Container(
            // height: 60,
            padding: EdgeInsets.only(top: 12),
            margin: EdgeInsets.only(right: 20, left: 20),
            // margin: EdgeInsets.only(),
            child:
            TextField(
              decoration: InputDecoration(
                hintText: "Confirm password",
              ),

            ),
          ),
        )
      ],
    ),
  );
}



Widget _bgImage() {
  return Stack(
    children: [
      Container(
        // margin: EdgeInsets.only(top: 20),
        child:
        Container(
          margin: EdgeInsets.only(top: 240,left: 20),
          child: Text(
            "Login \n ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.indigo[700],),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/signIn2.jpg'),
            fit: BoxFit.cover, // to cover the entire container
          ),
        ),
        width: double.infinity,
        height: 280, // adjust this as needed
      ),
    ],
  );
}


