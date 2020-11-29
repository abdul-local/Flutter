
import 'package:flutter/material.dart';

class Second_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second page')),
      body: Center(child:RaisedButton(child:Text('back to main_page'),onPressed: (){
        Navigator.pop(context);
      })),
    );
  }
}
