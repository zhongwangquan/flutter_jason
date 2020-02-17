import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
      return MaterialApp(
        title:'qwqweqwe',
        home:Scaffold(
          appBar: AppBar(title: new Text('垂直方向布局')),
          body: Center(child:new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new RaisedButton(
                onPressed: () {},
                color: Colors.redAccent,
                child: new Text('红色按234234钮')
              ),
              new RaisedButton(
                onPressed: () {},
                color: Colors.black54,
                child: new Text('黑色按钮')
              ),
              new RaisedButton(
                onPressed: () {},
                color: Colors.orange,
                child: new Text('橙色按钮')
              ),
          ],)
        )),
      );
  }
}
