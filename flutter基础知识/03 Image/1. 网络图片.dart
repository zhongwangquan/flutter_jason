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
              child: new Image.network(
                'https://pixlr.com/photo/image-design-11-1-pw.jpg',
                fit: BoxFit.scaleDown,
                color: Colors.orange,
                colorBlendMode: BlendMode.darken,
                repeat: ImageRepeat.repeatY,
              ),
              width: 300.0,
              height: 400.0,
              color: Colors.blue,
              // color: Colors.yellow,
            )
          )
        )
        );
  }
}