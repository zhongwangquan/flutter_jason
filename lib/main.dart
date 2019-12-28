import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'good',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(  // 布局组件
        body:  Center(  // body组件
          child: Container(
              child: new Text(
                  'Hellod jasons',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(255,255,150,150),
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid
                  )
              ),
              width: 200.0,
              height: 200.0,
              // color: Colors.yellow,
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.fromLTRB(90.0,20.0,0.0,0.0),
              margin: const EdgeInsets.all(10.0),
              decoration:new BoxDecoration(
                gradient:const LinearGradient(
                  colors:[Colors.lightBlue,Colors.greenAccent,Colors.purple]
                ),
                border: Border.all(width: 6.0, color: Colors.red,)
              ),
            )
          )
        )
        );
  }
}