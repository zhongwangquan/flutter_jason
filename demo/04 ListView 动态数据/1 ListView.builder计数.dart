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
        appBar: new AppBar(
          title: new Text("我是bar")
        ),
        body: ListView.builder(
            itemCount: 30, // 列表项的数量
            itemExtent: 100.0, // 强制高度为100
            itemBuilder:(context,index){
              return new ListTile(
                title:new Text('$index'),
              );
            }
          )
        )
        );
  }
}