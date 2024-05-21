import 'package:flutter/material.dart';

class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text('Details'),
      ),
      body:
      Container(
        height: 300,
        margin: EdgeInsets.only(top: 20, left:15, right: 10),
        decoration:
        BoxDecoration(
          // color: Colors.red,
        ),
        child:
        Text('Login screen for user to login using credential Email and Password using Flutter framework.'
            'Basic login page I \nhave made for fun and learning.', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
      ),
    );
  }
}
