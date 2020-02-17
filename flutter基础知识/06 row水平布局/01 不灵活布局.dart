import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
      return MaterialApp(
        title:'qwqweqwe',
        home:Scaffold(
          appBar: AppBar(title: new Text('水平方向布局')),
          body: new Row(children: <Widget>[
            new RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: new Text('红色按钮')
            ),
            new RaisedButton(
              onPressed: () {},
              color: Colors.black54,
              child: new Text('黄色按钮')
            ),
            new RaisedButton(
              onPressed: () {},
              color: Colors.black54,
              child: new Text('黄色按钮')
            ),
          ],)
        ),
      );
  }
}
