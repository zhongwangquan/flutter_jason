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
          child: Text( // text组件
            'Hello JSPang  ,非常喜欢前端，并且愿意为此奋斗一生。我希望可以出1000集免费教程。',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            maxLines: 3,
            style: TextStyle(
              fontSize: 25.0,
              color: Color.fromARGB(255,255,150,150),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid
            )
          )
        )
        ),
    );
  }
}