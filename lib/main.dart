import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  double mWidth = 100;
  double mHeight = 100;
  Color mColor = Colors.blue;
  double mBorderRadius = 21;
  double mOpacity = 0.2;
  bool isFirstVisible = true;
  int randomNo = 100;
  bool isUnique = false;

  Alignment mAlignment = Alignment.topLeft;
  
  var arrAlignment = [
    Alignment.topLeft,
    Alignment.topCenter,
    Alignment.topRight,
    Alignment.bottomLeft,
    Alignment.bottomCenter,
    Alignment.bottomRight,
    Alignment.centerLeft,
    Alignment.center,
    Alignment.centerRight,
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation'),
      ),
      body: InkWell(
        onTap: (){
          /*mWidth = mWidth==100 ? 200 : 100;
          mHeight = mHeight==100 ? 200 : 100;*/
          /*mWidth = Random().nextInt(200).toDouble();
          mHeight = Random().nextInt(200).toDouble();
          mBorderRadius = Random().nextInt(50).toDouble();
          mColor = Colors.primaries[Random().nextInt(Colors.primaries.length-1)];*/

          //mOpacity = mOpacity==1 ? 0.2 : 1 ;

          //isFirstVisible = !isFirstVisible;

          /*var random = 400;
          if(randomNo!=random){
            isUnique = true;
          } else {
            isUnique = false;
          }
          randomNo = random;*/


          mAlignment = arrAlignment[Random().nextInt(arrAlignment.length-1)];
          setState(() {

          });
        },
        child: Center(
          child: AnimatedAlign(
            duration: Duration(seconds: 2),
            alignment: mAlignment,
            child: Text('Hello World!!', style: TextStyle(fontSize: 34),),
          ))
      ),
    );
  }
}

//AnimatedContainer(
//             duration: Duration(seconds: 2),
//             width: mWidth,
//             height: mHeight,
//             decoration: BoxDecoration(
//               color: mColor,
//               borderRadius: BorderRadius.circular(mBorderRadius)
//             ),
//           ),


//AnimatedOpacity(
//             duration: Duration(
//               seconds: 2
//             ),
//             opacity: mOpacity,
//             child: Container(
//               color: Colors.blue,
//               width: 200,
//               height: 200,
//             ),
//           )

//AnimatedCrossFade(
//             duration: Duration(seconds: 10),
//             firstChild: Text('$randomNo', style: TextStyle(fontSize: 34),),
//             /*secondChild: SizedBox(
//               width: 300,
//               height: 200,
//               child: Image.asset("assets/images/bg.jpeg"),
//             ),*/
//             secondChild: Text('$randomNo', style: TextStyle(fontSize: 34),),
//             crossFadeState: isUnique ? CrossFadeState.showFirst : CrossFadeState.showSecond,
//           )
//         ),