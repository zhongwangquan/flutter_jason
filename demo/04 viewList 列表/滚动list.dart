import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'good',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(  // 布局组件
        appBar: new AppBar(
          title: new Text("我是bar")
        ),
        body: Center(
          child: Container(
            height: 200.0,
            child:  ListWidget(),
        )
        )
        )
        );
  }
}


class ListWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Container(
                  child: new Text('wos list2'),
                  width: 280.0,
                  height: 200.0,
                  color: Colors.red
                ),
                new Container(
                  child: new Text('wos list3'),
                  width: 280.0,
                  height: 200.0,
                  color: Colors.blue
                ),
                new Container(
                  child: new Text('wos list4'),
                  width: 280.0,
                  height: 200.0,
                  color: Colors.deepOrange
                ),
              ],
          );
  }
}