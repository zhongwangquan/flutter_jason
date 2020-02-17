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
        body:  new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text('list1'),
              leading: new Icon(Icons.access_alarms),
            ),
            new ListTile(
              title: new Text('list2'),
              leading: new Icon(Icons.add_to_queue)
            ),
            new ListTile(
              title: new Text('list3'),
              leading: new Icon(Icons.av_timer)
            ),
            new Image.network(
              'http://newimg.jspang.com/xiaomiquan.png'
            ),
            new Image.network(
              'http://newimg.jspang.com/xiaomiquan.png'
            )
          ],
        )
        )
        );
  }
}