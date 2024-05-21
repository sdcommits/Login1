
// import 'dart:js';
import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_1/pages/afterSignIn.dart';
import 'package:login_1/pages/detail.dart';
import 'package:login_1/pages/registerPage.dart';
import 'package:login_1/pages/signUpPage.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
        body:
        SingleChildScrollView(
          child:
          Container(
            // height: h,
            child: Column(
              children: [
                _bgImage(),
                // _loginBox(),
                _infoBox(),
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
            color: Colors.blue[700],
            // borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50),
            //     bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          height: 49,
          width: 130,
          margin: EdgeInsets.only(top: 20 , left: 10),
          child:
          Container(
            height: 40,
            margin: EdgeInsets.only(top: 0),
            // color: Colors.blue,
            child: CupertinoButton(
              child: const Text("Register", style:  TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
              onPressed: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context) => const registerPage()));
              },
            ),
          ),

        ),


        Container(
          decoration:
          BoxDecoration(
            color: Colors.blue[400],
            // borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50),
            //     bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          height: 49,
          width: 130,
          margin: EdgeInsets.only(top: 20 , left: 80),
          child:
              Container(
                height: 40,
                    margin: EdgeInsets.only(top: 0),
                    // color: Colors.blue,
                    child: CupertinoButton(
                      child: const Text("Details", style:  TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),),
                          onPressed: (){
                                Navigator.push(context, CupertinoPageRoute(builder: (context) => const details()));
                      },
                    ),
        ),
            )
      ],
    ),



  );
}

_signIn(BuildContext context) {

  return Container(
   child:
      Column(
        children: [

          Container(
                height: 56,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                  child:
                      Container(
                          height: 40,
                          margin: EdgeInsets.symmetric(horizontal: 90, vertical: 1),
                            // color: Colors.blue,
                              child:
                                  CupertinoButton(
                                        child: const Text ("Let's Start", style: TextStyle(color: Colors.white, fontSize: 20,
                                            fontWeight: FontWeight.w500 ),),
                                      onPressed: (){
                                          Navigator.push(
                                            context, CupertinoPageRoute(builder: (context) => const afterSignIn()),
                                          );
                                        }),),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child:
            Text("Earn with your mind,\n not with your time...", style:
            TextStyle(fontWeight:FontWeight.w600, fontSize: 16, color: Colors.grey[700] ),),
          )

        ],
      )


  );
}



Widget _bgImage() {
  return Stack(
    children: [

      Container(
        margin: EdgeInsets.only(left : 15, top: 60),
        child: Text(
          "As long as i know this!!", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.grey[700]),
        ),

      ),
      Container(
        margin: EdgeInsets.only(top: 100),
        // child:
        // Container(
        //   margin: EdgeInsets.only(left : 20),
        //   child: Text(
        //     "Create your account", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.indigo[700]),
        //   ),
        // ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/login1.jpg'),
            fit: BoxFit.cover, // to cover the entire container
          ),
        ),
        width: 400,
        height: 300, // adjust this as needed
      ),
    ],
  );
}

_infoBox() {

  return Container(
    child:
    Column(
      children: [
        Container(
          decoration:
          BoxDecoration(
            color: Colors.white,
          ),
          height: 50,
          margin: EdgeInsets.only(top: 15 ),
          child: Text("Hello!!", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35, color: Colors.grey[700]),),

        ),

        Container(

          decoration:
          BoxDecoration(
            color: Colors.white,
          ),
          height: 100,
          margin: EdgeInsets.only(top: 5,),
          child: Text(" If you don't design your own plan\n chances are that you'll fall into someone\n else's paln. "
              "And guess what they have\n planned for you?? ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.grey[600]),),

        )
      ],
    ),
  );
}



//

