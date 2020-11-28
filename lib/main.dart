import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());


// belajar menggunakan Stack dan Align

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan stact Align'),
        ),
        body: Stack(
          children: <Widget>[
            Column(children: <Widget>[
              Flexible(flex:1,child: Row(children: <Widget>[
                Flexible(child: Container(color: Colors.white,)),
                Flexible(child: Container(color: Colors.black12,)),
              ],)),
              Flexible(flex:1,child: Row(children: <Widget>[
                Flexible(child: Container(color: Colors.black12,)),
                Flexible(child: Container(color: Colors.white,)),
              ],))
            ]),
            ListView(children: <Widget>[
              Column(children: <Widget>[
              Container
              
              (
                margin: EdgeInsets.all(10),
                
              child:
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20))),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
              Text('Ini text yang ada di tengah dari Stack',style:TextStyle(fontSize: 20)),
            ],)
            ],),
            Align(
              alignment: Alignment(0.9,0.9),
              child: RaisedButton(color:Colors.amber,child:Text('MyButton'),onPressed: (){
                
                
              }),
            )

          ],
        ),
      ),
    );
  }
}

// Materi Flexiable Widget
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flexible Layouts'),
//         ),
//         body: Column(
//           children: <Widget>[
//             Flexible(
//                 flex: 1,
//                   child: Container(
//                     color: Colors.white10,
//                     child: Row(
//                       children: <Widget>[
//                         Flexible(flex:1,child: Container(margin:EdgeInsets.all(5),color: Colors.yellow,)),
//                         Flexible(flex:1,child: Container(margin:EdgeInsets.all(5),color: Colors.green,)),
//                         Flexible(flex:1,child: Container(margin:EdgeInsets.all(5),color: Colors.amber,))
//                       ]
//                     ),
//               ),
//               ),
//                Flexible(
//                 flex: 2,
//                   child: Container(
//                   color: Colors.blue,
//                   margin: EdgeInsets.all(5),
//               )),
//                Flexible(
//                 flex: 1,
//                   child: Container(
//                   color: Colors.yellow,
//                   margin: EdgeInsets.all(5),
//                   ))

//               ]
//         ),
//       ),
//     );
//   }
// }

// materi animatedContainer dan GesturDetector

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Random random=Random();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       appBar: AppBar(
//       title: Text('animatedContainer'),
//       ),
//       body: Center(
//         child:GestureDetector(
//           onTap: (){
//             setState(() {

//             });
//           },
//       child:AnimatedContainer(
//       color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),
//       duration: Duration(seconds:1),
//       width: 50.1 + random.nextInt(100),
//       height: 50.1 + random.nextInt(100) ,),
//       ),
//       )
//       )
//     );
//   }
// }

// materi Text Style

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('latihan textStyle'),
//         ),
//         body: Center(
//             child: Text(
//           'ini body test dicoba saja',
//           style: TextStyle(
//               fontFamily: "CrashLandingBB",
//               fontSize: 30,
//               fontStyle: FontStyle.italic,
//               decoration: TextDecoration.overline,
//               decorationColor: Colors.red,
//               decorationThickness: 5,
//               decorationStyle: TextDecorationStyle.wavy
//               ),
//         )),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Widget> widgets = [];
//   int number=0;
// constructor
// _MyAppState(){

// // for (int i = 0; i < 15; i++){
// //   widgets.add(Text("data ke " + i.toString()))
// // }

// }
// _MyAppState() {
//   for (var i = 0; i < 15; i++) {
//     widgets.add(Text('Data Ke ' +  i.toString(),style: TextStyle(fontSize: 35),));
//   }
//   // widgets.add(Text('Data di dalam widget'));
//   // widgets.add(Text('Data di dalam widget 1'));
// }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//        appBar: AppBar(
//         title: Text("belajar List test "),
//       ),
//       body: ListView(children: <Widget>[

//        Row(
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children:<Widget>[
//             RaisedButton( color:Colors.green,child:Text('Tambah data') ,onPressed: (){
//               setState(() {
//                 number+=1;
//                 widgets.add(Text('Data ke-'+number.toString(),style:TextStyle(fontSize: 35),));
//               });

//             }),
//             RaisedButton(color:Colors.red,child:Text('Hapus data ') ,onPressed: (){
//               setState(() {
//                 if(number < 0){
//                   number=0;
//                 }
//                 number-=1;
//                  widgets.removeLast();
//               });

//             })
//           ]
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children:widgets,
//         )
//       ]),
//     ));
//   }
// }

//    Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//     children: widge

//     // <Widget>[
//     //   Text("text 1"),
//     //   Text("text 2")
//     // ],

//   )),
//        ),

//     );
//   }
// }

// belajar anynomuse method
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String message="ini adalah pesan awal";

//   // void tomboltekan(){
//   //   setState(() {
//   //     message="ini adalah pesan setelah di kelik";
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('anynomuse fungsi')),
//         body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(message),
//             RaisedButton(child:Text('Tekan saya') ,onPressed: () {setState(() {
//               message="ini menggunakan anynomouse method";
//             });})
//           ],
//         )),
//       ),
//     );
//   }
// }

// ini belaar statefulWidget

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int number=0;
//   void tekantombol() {
//     // print("hello word");
//     setState(() {

//       number+=1;
//     });

//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('latihan menggunakan statefulwidget'),
//         ),
//         body: Center(
//             child: Column(
//               mainAxisAlignment:MainAxisAlignment.center,
//           children: <Widget>[
//             Text(number.toString(),style:TextStyle(fontSize:10 + number.toDouble()),),
//             RaisedButton(child: Text("tambah bilangan"), onPressed: tekantombol)
//           ],
//         )),
//       ),
//     );
//   }
// }

// materi belajar Container

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("  Membahas tentang container")),
//         body: Container(
//           color: Colors.red,
//           // margin: EdgeInsets.all(10),
//           margin: EdgeInsets.fromLTRB(15, 25, 15, 25),
//           // padding: EdgeInsets.all(10),
//           padding: EdgeInsets.only(bottom: 10, top: 10),

//           child: Container(margin: EdgeInsets.only(left:15,right:15),
//             decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
//                 gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     colors: <Color>[Colors.amber, Colors.blue])),
//             // color: Colors.lightBlue,
//           ),
//         ),

// materi belajar text widget

//         // body: Center(
//         //     child: Container(
//         //         color: Colors.lightBlue,
//         //         width: 150,
//         //         height: 50,
//         //         child: Text("Saya sedang latihan belajar flutter dan juga mengenal lebih jauh",
//         //         style: TextStyle(
//         //           color: Colors.white,
//         //           fontStyle: FontStyle.italic,
//         //           fontWeight: FontWeight.bold,
//         //           fontSize: 20

//         //         // textAlign: TextAlign.center,
//         //         // maxLines: 2,
//         //         // overflow: TextOverflow.clip,
//         //         // softWrap: false,

//         //         ))),

//       ),
//     );
//   }
// }

// // {
// //   runApp(MyApp());

// //
