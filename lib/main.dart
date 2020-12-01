// import 'dart:math';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_app/login_page.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/widgets/container.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_)=>runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      body: Stack(children: <Widget>[
        Positioned(
          right: -getSmallDiameter(context) / 3,
          top: -getSmallDiameter(context) / 3,
          child: Container(
            width: getSmallDiameter(context),
            height: getSmallDiameter(context),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ),
        Positioned(
          left: -getBigDiameter(context) / 4,
          top: -getBigDiameter(context) / 4,
          child: Container(
            child: Center(
                child: Text(
              'dribble',
              style: TextStyle(
                  fontSize: 30, color: Colors.white, fontFamily: "Pacifico"),
            )),
            width: getBigDiameter(context),
            height: getBigDiameter(context),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ),
        Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3E9EE),
              ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: ListView(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
              child: Column(children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.email,
                        color: Color(0xFFFF4891),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFF4891)),
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Color(0xFFFF4891))),
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color(0xFFFF4891),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFFF4891)),
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Color(0xFFFF4891))),
                ),
              ]),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                  child: Text("FORGET PASSWORD ?",
                      style:
                          TextStyle(color: Color(0xFFFF4891), fontSize: 11))),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Container( 
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.amber,
                          onTap: (){},
                          child: Center(child: Text('SIGN IN',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                     gradient: LinearGradient(
                     colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                     begin: Alignment.topCenter,
                     end: Alignment.bottomCenter)
                    )),
                  ),
                  FloatingActionButton(
                    mini: true,
                    elevation: 0,
                    child: Image(image: NetworkImage('https://i.pinimg.com/originals/d2/e5/35/d2e5359f8402cb8d3d7b22c463f9013b.png')),
                    onPressed: (){}),
                     FloatingActionButton(
                       backgroundColor: Colors.white,
                    mini: true,
                    elevation: 0,
                    child: Image(image: NetworkImage('https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-logo-vector-png-clipart-1.png')),
                    onPressed: (){}),
                  
                ],
              ),
             
            ),
             Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
               Text('DONT HAVE AN ACCOUNT ? ',style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w500)),
               Text('SIGN UP ',style: TextStyle(color: Color(0xFFFF4891),fontSize: 11,fontWeight: FontWeight.w900))
                
              ],)
          ]),
        )
      ]),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainPage(),
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Mobile App',style: TextStyle(color:Colors.white),),
//           leading: Icon(Icons.adb,color: Colors.white,),
//           actions: <Widget>[
//             IconButton(icon: Icon(Icons.account_box), onPressed: (){}),
//             IconButton(icon: Icon(Icons.settings), onPressed: (){})
//           ],

//           backgroundColor: Color(0XFF8C062F),
//         ),
//         body: Stack(children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                   colors: [Color(0xFFFE5788), Color(0xFFF56D5D)],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter),
//             ),
//           ),
//           Center(
//               child: SizedBox(
//             width: MediaQuery.of(context).size.width * 0.8,
//             height: MediaQuery.of(context).size.height * 0.7,
//             child: Card(
//                 elevation: 10,
//                 child: Stack(children: <Widget>[
//                   Opacity(
//                     opacity: 0.7,
//                     child: Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(5),
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   'https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png'),
//                               fit: BoxFit.cover)),
//                     ),
//                   ),
//                   Container(
//                     height: MediaQuery.of(context).size.height * 0.35,

//                     // width: MediaQuery.of(context).size.width * 0.7,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(5),
//                             topRight: Radius.circular(5)),
//                         image: DecorationImage(
//                             image: NetworkImage(
//                                 'https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg'),
//                             fit: BoxFit.cover)),
//                   ),
//                   Container(
//                     margin: EdgeInsets.fromLTRB(20,
//                         50+ MediaQuery.of(context).size.height * 0.35, 20, 20),
//                     child: Center(
//                       child: Column(children: <Widget>[
//                         Text('Beatiful sunset at paddy Field',
//                         maxLines: 2,
//                         textAlign: TextAlign.center,
//                         style:
//                         TextStyle(color: Color(0XFFF56D5D), fontSize: 25)),
//                         Container(
//                           margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
//                           child: Row( mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//                             Text('Post on  ',
//                           style:
//                           TextStyle(color: Colors.grey, fontSize: 12)),
//                           Text(' 30 Desember 2020',
//                           style:
//                           TextStyle(color: Color(0XFFF56D5D), fontSize: 12,)),
//                           ],),
//                         ),
//                         Row(children:<Widget>[
//                           Spacer(flex: 10),
//                           // Icon
//                           Icon(Icons.thumb_up,size:18, color: Colors.grey,),
//                           Spacer(flex: 1,),
//                           // text
//                           Text('99'),
//                           Spacer(flex: 5,),
//                           // Icon
//                           Icon(Icons.comment,size:18,color:Colors.grey),
//                           Spacer(flex: 1,),
//                           // text
//                           Text('888'),
//                           Spacer(flex: 10,),
//                         ])
//                       ]),
//                     ),
//                   )
//                 ])),
//           ))
//         ]),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('latihan membuat button'),
//         ),
//         body: Center(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 RaisedButton(
//                     color: Colors.amber,
//                     child: Text('Raised Button'),
//                     shape: StadiumBorder(),
//                     onPressed: () {}),

//                 Material(
//                  elevation: 3,
//                  borderRadius:BorderRadius.circular(20),
//                 child: Container(
//                     width: 150,
//                     height: 40,
//                     // color: Colors.transparent,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                     gradient: LinearGradient(
//                     colors: [Colors.purple, Colors.pink],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter)),
//                     child: Material(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.transparent,
//                       child: InkWell(
//                         splashColor: Colors.amber,
//                         onTap: (){},
//                         borderRadius: BorderRadius.circular(20),
//                         child: Center(
//                           child: Text('My button',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
//                         )),
//                       ),
//                     ),
//                   ),
//                 ),
//               ]),
//         ),
//       ),
//     );
//   }
// }
