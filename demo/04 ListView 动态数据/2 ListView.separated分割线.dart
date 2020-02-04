import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。  
    Widget divider1=Divider(color: Colors.blue,);
    Widget divider2=Divider(color: Colors.green);

    return MaterialApp(
      title: 'good',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(  // 布局组件
        appBar: new AppBar(
          title: new Text("我是bar")
        ),
        body: ListView.separated(
            itemCount: 30, // 列表项的数量
            itemBuilder:(context,index){
              return new ListTile(
                title:new Text('$index'),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return index%2==0?divider1:divider2;
            },
          )
        )
        );
  }
}