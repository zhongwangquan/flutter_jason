import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
      return MaterialApp(
        title:'ListView widget',
        home:Scaffold(
          appBar: AppBar(title: new Text('woshi bar')),
          body: GridView.count(
            padding: const EdgeInsets.all(10.0),
            crossAxisSpacing: 10.0,
            crossAxisCount: 4,
            children: <Widget>[
              const Text('I am Jspang'),
              const Text('I love Web'),
              const Text('jspang.com'),
              const Text('我喜欢玩游戏'),
              const Text('我喜欢看书'),
              const Text('我喜欢吃火锅')
            ],
          )
        ),
      );
  }
}
