import 'package:flutter/material.dart';
import 'dart:math';

class ColorfullButton extends StatefulWidget {
   IconData iconData;
  Color mainColor,secondColor;
  ColorfullButton(this.mainColor,this.secondColor,this.iconData);
  @override
  _ColorfullButtonState createState() => _ColorfullButtonState(this.mainColor,this.secondColor,this.iconData);
}

class _ColorfullButtonState extends State<ColorfullButton> {
  bool isPress=false;
  IconData iconData;
  Color mainColor,secondColor;
  _ColorfullButtonState(this.mainColor,this.secondColor,this.iconData);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details){
        setState(() {
          isPress=true;
        });

      },
      onTapDown: (details){
        setState(() {
          isPress=true;
        });
      },
      onTapCancel: (){
        setState(() {
          isPress=true;
        });
      },
          child: Transform.rotate(
            angle: pi/4,
                      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 10,
              child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
                child: Stack(
                children: <Widget>[
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      
                      color: (isPress) ? secondColor : mainColor,
                      child: Transform.rotate( 
                        angle: -pi/4,
                        child: Icon(iconData,color: Colors.white,))
                    )),
                    Transform.translate(
                      offset: Offset(30, 30),
                                  child: SizedBox(
                        width:50,
                        height:50,
                        child: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withOpacity(0.7)
                        ),
                      ),
                    ),
                         Transform.translate(
                      offset: Offset(-30, -30),
                                  child: SizedBox(
                        width:50,
                        height:50,
                        child: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withOpacity(0.7)
                        ),
                      ),
                    ),
                         Transform.translate(
                      offset: Offset(-30, 30),
                                  child: SizedBox(
                        width:50,
                        height:50,
                        child: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withOpacity(0.7)
                        ),
                      ),
                    ),
                         Transform.translate(
                      offset: Offset(30, -30),
                                  child: SizedBox(
                        width:50,
                        height:50,
                        child: Material(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withOpacity(0.7)
                        ),
                      ),
                    )
                ],
            ),
        ),
      ),
          ),
    );
  }
}