import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:flutter_app/login_page.dart';
import 'package:flutter/src/material/icons.dart';

void main() => runApp(MyApp());


// MediaQueryResponsive app

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan MediaQuery'),
        ),

        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(children: children())
            : Row(
                children: children(),
              ),
        // body: Container(
        //   // color: Colors.amber,
        //   // width: MediaQuery.of(context).size.width / 3,
        //   // height: MediaQuery.of(context).size.height / 2,
        //
        // ),
      ),
    );
  }

  List<Widget> children() {
    return <Widget>[
      Container(
        color: Colors.red,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.blue,
        height: 100,
        width: 100,
      ),
      Container(
        color: Colors.amber,
        height: 100,
        width: 100,
      )
    ];
  }
}

// materi tengtang textField Decoration

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   TextEditingController controller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('latihan Text Field')),
//         body: Container(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               TextField(
//                 // tampilan seperti menampilkan password
//                 // obscureText: true,

//                 // menggunakan maxLength

//                 decoration: InputDecoration(
//                   //border:InputBorder.none
//                   fillColor: Colors.lightBlue[50],
//                   filled: true,
//                   suffix: Container(height:5,width:5,color:Colors.red),
//                   icon: Icon(Icons.adb),
//                   prefixIcon: Icon(Icons.person),
//                   prefixText: "Name :",
//                   labelText: "Nama Lengkap : ",
//                   hintText: "Isi Nama lengkap loh..",
//                   hintStyle:TextStyle( fontSize: 12 ),
//                   prefixStyle: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold),
//                   border: OutlineInputBorder(borderRadius:BorderRadius.circular(10))
//                 ),
//                 maxLength: 10,
//                 onChanged: (value){
//                   setState(() {

//                   });
//                 },
//                 controller: controller,
//               ),
//               Text(controller.text)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Materi Card

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           backgroundColor: Colors.green,
//           body: Container(
//               margin: EdgeInsets.all(10),
//               child: ListView(children: <Widget>[
//                 buildCard(Icons.account_box,'kontak'),
//                 buildCard(Icons.add_call,'phone')
//               ]))),
//     );
//   }

//   Card buildCard(IconData iconData,String text) {
//     return Card(
//                 elevation: 5,
//                   child: Row(
//                 children: <Widget>[
//                   Container(
//                       margin: EdgeInsets.all(5),
//                       child: Icon(iconData),color: Colors.amber,),
//                   Text(text),
//                 ],
//               ));
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Icon(
//             Icons.adb,
//             color: Colors.white,
//           ),
//           title: Text(
//             'Appbar Example',
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: <Widget>[
//             IconButton(icon: Icon(Icons.settings), onPressed: () {}),
//             IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
//           ],
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xff0096ff), Color(0xff6610f)],
//                   begin: FractionalOffset.topLeft,
//                   end: FractionalOffset.bottomRight,
//                 ),
//                 image: DecorationImage(
//                     image: AssetImage("images/pattern1.png"),
//                     fit: BoxFit.none,
//                     repeat: ImageRepeat.repeat)),
//           ),
//         ),
//       ),
//     );
//   }
// }

// pengunaan Navigasi multipage/Screen

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: Login_page(),

//     );
//   }
// }

//Dragable,Dragtarget,sizeBox,Material

// class MyApp extends StatelessWidget {
//   Color color1 = Colors.red;
//   Color color2 = Colors.amber;
//   Color targetColor;
//   bool isAccepted = false;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Latihan dragable'),
//         ),
//         body: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: <Widget>[
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   Draggable<Color>(
//                     data: color1,
//                     child: SizedBox(
//                         width: 50,
//                         height: 50,
//                         child: Material(
//                           color: color1,
//                           shape: StadiumBorder(),
//                           elevation: 3,
//                         )),

//                     childWhenDragging: SizedBox(
//                         width: 50,
//                         height: 50,
//                         child: Material(
//                           color: Colors.black12,
//                           shape: StadiumBorder(),
//                           elevation: 3,
//                         )),
//                         // feedback itu bentuk si lingkaran itu ketika saya drag
//                     feedback: SizedBox(
//                         width: 50,
//                         height: 50,
//                         child: Material(
//                           color: color1.withOpacity(0.2),
//                           shape: StadiumBorder(),
//                           elevation: 3,
//                         )),
//                   ),
//                   Draggable<Color>(
//                     data: color2,
//                     child: SizedBox(
//                         width: 50,
//                         height: 50,
//                         child: Material(
//                           color: color2,
//                           shape: StadiumBorder(),
//                           elevation: 3,
//                         )),

//                     childWhenDragging: SizedBox(
//                         width: 50,
//                         height: 50,
//                         child: Material(
//                           color: Colors.black12,
//                           shape: StadiumBorder(),
//                           elevation: 3,
//                         )),
//                     feedback: SizedBox(
//                         width: 50,
//                         height: 50,
//                         child: Material(
//                           color: color1.withOpacity(0.2),
//                           shape: StadiumBorder(),
//                           elevation: 3,
//                         )),
//                   )
//                 ],
//               ),
//               DragTarget<Color>(

//                 onWillAccept: (value) => true,
//                  onAccept: (value) {
//                   isAccepted = true;
//                   targetColor=value;
//                 },
//                 builder: ( context,candidates,rejected){
//                   return (isAccepted) ? SizedBox(
//                         width: 100,
//                         height: 100,
//                         child: Material(
//                           color: targetColor,
//                           shape: StadiumBorder(),

//                         ),
//                   ) : SizedBox (
//                         width: 100,
//                         height: 100,
//                         child: Material(
//                         color:Colors.black12,
//                         shape: StadiumBorder(),
//                         )
//                   );

//                 },
//               )
//             ]),
//       ),
//     );
//   }
// }

// penggunaan spacer()

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text('Spacer Widget'),
//             ),
//             body: Center(
//               child: Row(
//                 // mainAxisAlignment: MainAxisAlignment.spaceEvenly
//                 children: <Widget>[
//                   Spacer(flex:1),
//                   Container(width: 80, height: 80, color: Colors.red),
//                   Spacer(flex:2),
//                   Container(width: 80, height: 80, color: Colors.green),
//                   Spacer(flex: 3),
//                   Container(width: 80, height: 80, color: Colors.blue)
//                 ],
//               ),
//             )));
//   }
// }
// belajar ImageWidget

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Latihan Image'),
//         ),
//         body: Center(
//           child: Container(
//             color: Colors.black,
//             width: 200,
//             height: 200,
//             padding: EdgeInsets.all(5),
//             child: Image(

//               // Sekarang Menggunakan AssetImage
//               image: AssetImage("images/ironman.jpg"),
//               fit: BoxFit.contain,
//               repeat:ImageRepeat.repeat ,
//               // ini menggunakan NetworkImage
//               // image: NetworkImage(
//               //     'https://upload.wikimedia.org/wikipedia/commons/2/23/20190106_%28NEWSEN%29_%EB%B8%94%EB%9E%99%ED%95%91%ED%81%AC%28BLACKPINK%29%2C_%EC%88%98%EC%A4%8D%EC%9D%80_%EB%A7%8E%EC%9D%80_%EC%86%8C%EB%85%80%EC%A7%80%EB%A7%8C_%EB%8F%8B%EB%B3%B4%EC%9D%B4%EB%8A%94_%EC%95%84%EB%A6%84%EB%8B%A4%EC%9A%B4_%EB%AF%B8%EB%AA%A8_%28Golden_Disc_Awards_2019%29_%284%29.jpg'),
//               // fit: BoxFit.contain,
//               // repeat: ImageRepeat.repeat,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
