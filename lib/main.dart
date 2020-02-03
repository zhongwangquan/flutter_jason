import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){

    var stack = new Stack(
      alignment: const FractionalOffset(1, 1),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg'),
          radius: 100.0,
        ),
        new Container(
            decoration: new BoxDecoration(
              color: Colors.lightBlue,
            ),
            padding: EdgeInsets.all(5.0),
            child: new Text('JSPang 技术胖'),
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
