import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){

    var stack = new Stack(
      alignment: Alignment.bottomRight,
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: NetworkImage('http://newimg.jspang.com/xiaomiquan.png'),
          radius: 100.0,
        ),
        new Container(
            decoration: new BoxDecoration(
              color: Colors.lightBlue,
            ),
            padding: EdgeInsets.all(5.0),
            child: new Text('Jason 技术胖2'),
          )

      ]
    );

      return MaterialApp(
        title:'qwqweqwe',
        home:Scaffold(
          appBar: AppBar(title: new Text('层叠布局2')),
          body: Center(child:stack
        )
        ),
      );
  }
}
