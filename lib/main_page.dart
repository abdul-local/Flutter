import 'package:flutter/material.dart';
import 'package:flutter_app/second_page.dart';

class Main_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main page')),
      body: Center(child:RaisedButton(child:Text('go-to second_page'),onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Second_page()));
      })),
    );
  }
}
