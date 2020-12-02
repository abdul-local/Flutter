// import 'dart:math';

// import 'dart:async';
//import 'package:flutter_app/colorfull.dart';
// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';
// import 'package:flutter/services.dart';
// //import 'package:flutter_app/login_page.dart';
// import 'package:flutter/src/material/icons.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:qrscan/qrscan.dart'as scanner;

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   String text ="QR Scand";
  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(appBar: AppBar(title: Text('QR Scand')),
      body: Center(
           child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget>[
             Text(text),
             SizedBox(
               height: 20,
             ),
             RaisedButton(child:Text('Scand QR'), onPressed:()async{
              text =await scanner.scan();
              setState(() {
                
              });
             }),
           ]),
      ),
      ),
      
    );
  }
}

// Bagimana playing music

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String awal="00:00:00";
//   AudioPlayer audioPlayer;
//  _MyAppState(){
//    audioPlayer=AudioPlayer();
//    audioPlayer.onAudioPositionChanged.listen((durtion) {
//      setState((){
//        awal=durtion.toString();
//      });
//    });
//    // ini digunakan biasanya di lepaskan dari memory jadi kembali ke kondisi awal lagi
//    audioPlayer.setReleaseMode(ReleaseMode.LOOP);

//  }
//  void playSound(String url)async{
//    // misalnya kita memulai dari detik ke 30
//    await audioPlayer.seek(Duration(seconds: 30));
//      await audioPlayer.play(url);
//    }
//    void pauseSound()async{
//      await audioPlayer.pause();

//    }
//    void stopSound()async{
//      await audioPlayer.stop();
//    }
//    void resumeSound()async{
//      await audioPlayer.resume();
//    }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(appBar: AppBar(title: Text('Playing music')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             RaisedButton(child:Text('Play'),onPressed: (){
//               playSound('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
//             }),
//             RaisedButton(child:Text('Pause'),onPressed: (){
//               pauseSound();
//             }),
//             RaisedButton(child:Text('Stop'),onPressed: (){
//               stopSound();
//             }),
//             RaisedButton(child:Text('Resume'),onPressed: (){
//               resumeSound();
//             }),
//             Text(awal,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
//           ],
//         ),
//       ),
//       ),
//     );
//   }
// }
// class MyApp extends StatelessWidget {

//   String awal="00:00:00";
//   AudioPlayer audioPlayer;

//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }

// Gradient Opacity

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('gradient opacity'),
//         ),
//         body: Center(
//           // shaderMast dipakai supaya ada efek-efeknya
//             child: ShaderMask(
//               shaderCallback: (rectangle){
//                 return LinearGradient(colors: [Colors.black38,Colors.transparent],

//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter
//                 ).createShader(Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));

//               },
//               blendMode: BlendMode.dstIn,
//                 child: Image(
//                 width: 300,
//                   image: NetworkImage(
//                       'https://upload.wikimedia.org/wikipedia/commons/a/ae/Indonesia_-_Lake_Toba_%2826224127503%29.jpg')),
//             )),
//       ),
//     );
//   }
// }

// costum button belahketupat
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           body: Center(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           ColorfullButton(Colors.pink,Colors.yellowAccent,Icons.comment),
//            ColorfullButton(Colors.pink,Colors.purple,Icons.computer),
//             ColorfullButton(Colors.pink,Colors.blue,Icons.account_box),
//              ColorfullButton(Colors.pink,Colors.amber,Icons.message)

//         ],
//       ))),
//     );
//   }
// }

// QR code

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           body: Center(
//               child: QrImage(
//         version: 6,
//         backgroundColor: Colors.white10,
//         foregroundColor: Colors.black,
//         errorCorrectionLevel: QrErrorCorrectLevel.M,
//         padding: EdgeInsets.all(30),
//         size: 300,
//         data: "https://www.youtube.com/watch?v=XDWbw8DRSOs&t=87s",
//       ))),
//     );
//   }
// }

// // tab Bar pada flutter

// class MyApp extends StatelessWidget {
//   @override
//   TabBar mytabBar = TabBar(
//     // indicatorColor: Colors.red,
//     indicator: BoxDecoration(color:Colors.red,border: Border(top:BorderSide(color: Colors.purple,width: 5))),
//     tabs: <Widget>[
//     Tab(icon: Icon(Icons.message), text: "Message"),
//     Tab(
//       child: Image(
//           image: NetworkImage(
//               'https://images.vexels.com/media/users/3/137253/isolated/preview/90dd9f12fdd1eefb8c8976903944c026-facebook-icon-logo-by-vexels.png')),
//     ),
//     Tab(
//       icon: Icon(Icons.computer),
//       text: "News",
//     ),
//     Tab(
//       icon: Icon(Icons.contact_phone),
//       text: "contact",
//     )
//   ]);
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DefaultTabController(
//           length: 4,
//           child: Scaffold(
//             appBar: AppBar(
//               title: Text('Example TabBar'),
//               bottom: PreferredSize(
//                   preferredSize: Size.fromHeight(mytabBar.preferredSize.height),
//                   child: Container(color: Colors.amber, child: mytabBar)),
//             ),
//             body: TabBarView(children: <Widget>[
//               Center(child: Text('ini tab pertama')),
//               Center(child: Text('ini tab kedua')),
//               Center(child: Text('ini tab ketiga')),
//               Center(
//                 child: Text('ini tab keempat'),
//               )
//             ]),
//           )),
//     );
//   }
// }

// constum app bar

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: PreferredSize(
//             preferredSize: Size.fromHeight(200),
//                       child: AppBar(
//             backgroundColor: Colors.amber,
//         flexibleSpace: Positioned(right:0,bottom: 0,child: Container(margin:EdgeInsets.all(20),child: Text('Appbar with costum height',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),))),
//       ),
//           )),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//          backgroundColor: Colors.lightBlue[50],
//         appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Text(
//             'Latihan Hero Animasi',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         body: GestureDetector(
//           onTap:(){
//             Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
//           },
//            child: Hero(
//              tag: 'pp',
//                         child: ClipRRect(
//               borderRadius: BorderRadius.circular(50),
//                  child: Container(
//                 height: 100,
//                 width: 100,
//                   child: Image(
//                     fit: BoxFit.cover,
//                 image: NetworkImage(
//                     'https://assets.pikiran-rakyat.com/crop/38x62:668x461/x/photo/2020/02/07/2485893705.jpg'),
//               )),
//           ),
//            ),
//         ),

//       )

//     );
//   }
// }
// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//          backgroundColor: Colors.pink[50],
//          appBar: AppBar(
//           backgroundColor: Colors.black,
//           title: Text(
//             'Latihan Hero Animasi',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         body: Center(
//           child: Hero(
//             tag: 'pp',
//              child: ClipRRect(
//                 borderRadius: BorderRadius.circular(100),
//                    child: Container(
//                   height: 200,
//                   width: 200,
//                     child: Image(
//                fit: BoxFit.cover,
//                   image: NetworkImage(
//             'https://assets.pikiran-rakyat.com/crop/38x62:668x461/x/photo/2020/02/07/2485893705.jpg'),
//                 )),
//               ),
//           ),
//         ),

//     );
//   }
// }
// void main() {
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_)=>runApp(MyApp()));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MainPage(),
//     );
//   }
// }

// class MainPage extends StatelessWidget {
//   double getSmallDiameter(BuildContext context) =>
//       MediaQuery.of(context).size.width * 2 / 3;
//   double getBigDiameter(BuildContext context) =>
//       MediaQuery.of(context).size.width * 7 / 8;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFEEEEEE),
//       body: Stack(children: <Widget>[
//         Positioned(
//           right: -getSmallDiameter(context) / 3,
//           top: -getSmallDiameter(context) / 3,
//           child: Container(
//             width: getSmallDiameter(context),
//             height: getSmallDiameter(context),
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: LinearGradient(
//                     colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter)),
//           ),
//         ),
//         Positioned(
//           left: -getBigDiameter(context) / 4,
//           top: -getBigDiameter(context) / 4,
//           child: Container(
//             child: Center(
//                 child: Text(
//               'dribble',
//               style: TextStyle(
//                   fontSize: 30, color: Colors.white, fontFamily: "Pacifico"),
//             )),
//             width: getBigDiameter(context),
//             height: getBigDiameter(context),
//             decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: LinearGradient(
//                     colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter)),
//           ),
//         ),
//         Positioned(
//             right: -getBigDiameter(context) / 2,
//             bottom: -getBigDiameter(context) / 2,
//             child: Container(
//               width: getBigDiameter(context),
//               height: getBigDiameter(context),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Color(0xFFF3E9EE),
//               ),
//             )),
//         Align(
//           alignment: Alignment.bottomCenter,
//           child: ListView(children: <Widget>[
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Colors.grey),
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
//               padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
//               child: Column(children: <Widget>[
//                 TextField(
//                   decoration: InputDecoration(
//                       icon: Icon(
//                         Icons.email,
//                         color: Color(0xFFFF4891),
//                       ),
//                       focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Color(0xFFFF4891)),
//                       ),
//                       labelText: "Email",
//                       labelStyle: TextStyle(color: Color(0xFFFF4891))),
//                 ),
//                 TextField(
//                   obscureText: true,
//                   decoration: InputDecoration(
//                       icon: Icon(
//                         Icons.vpn_key,
//                         color: Color(0xFFFF4891),
//                       ),
//                       focusedBorder: UnderlineInputBorder(
//                         borderSide: BorderSide(color: Color(0xFFFF4891)),
//                       ),
//                       labelText: "Password",
//                       labelStyle: TextStyle(color: Color(0xFFFF4891))),
//                 ),
//               ]),
//             ),
//             Align(
//               alignment: Alignment.centerRight,
//               child: Container(
//                   margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
//                   child: Text("FORGET PASSWORD ?",
//                       style:
//                           TextStyle(color: Color(0xFFFF4891), fontSize: 11))),
//             ),
//             Container(
//               margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 40,
//                     width: MediaQuery.of(context).size.width * 0.5,
//                     child: Container(
//                       child: Material(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.transparent,
//                         child: InkWell(
//                           borderRadius: BorderRadius.circular(20),
//                           splashColor: Colors.amber,
//                           onTap: (){},
//                           child: Center(child: Text('SIGN IN',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)),
//                         ),
//                       ),
//                     decoration:BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                      gradient: LinearGradient(
//                      colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
//                      begin: Alignment.topCenter,
//                      end: Alignment.bottomCenter)
//                     )),
//                   ),
//                   FloatingActionButton(
//                     mini: true,
//                     elevation: 0,
//                     child: Image(image: NetworkImage('https://i.pinimg.com/originals/d2/e5/35/d2e5359f8402cb8d3d7b22c463f9013b.png')),
//                     onPressed: (){}),
//                      FloatingActionButton(
//                        backgroundColor: Colors.white,
//                     mini: true,
//                     elevation: 0,
//                     child: Image(image: NetworkImage('https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-logo-vector-png-clipart-1.png')),
//                     onPressed: (){}),

//                 ],
//               ),

//             ),
//              Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
//                Text('DONT HAVE AN ACCOUNT ? ',style: TextStyle(color: Colors.grey,fontSize: 11,fontWeight: FontWeight.w500)),
//                Text('SIGN UP ',style: TextStyle(color: Color(0xFFFF4891),fontSize: 11,fontWeight: FontWeight.w900))

//               ],)
//           ]),
//         )
//       ]),
//     );
//   }
// }

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
