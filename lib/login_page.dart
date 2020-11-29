import 'package:flutter/material.dart';
import 'package:flutter_app/main_page.dart';
import 'package:flutter_app/main_page.dart';

class Login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: RaisedButton(child: Text('Login'), onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Main_page()));
      })),
    );
  }
}
