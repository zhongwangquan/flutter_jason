import 'package:flutter/material.dart';
void main () => runApp(MyApp(
  //要调用MyApp需要传入一个list集合
  listItem: new List<String>.generate(1000, (i)=> "Item数据 $i")
));

class MyApp extends StatelessWidget{
   //接收父类传入的1000条数据
  final List<String> listItem; // 定义变量
  MyApp({key, @required this.listItem}):super(key:key); // 接受数据


  @override
  Widget build(BuildContext context ){
      return MaterialApp(
        title:'ListView widget',
        home:Scaffold(
          appBar: AppBar(title: new Text('woshi bar')),
          body: ListView.builder(
            itemCount: listItem.length, // listItem是接收到的list数据
            itemBuilder:(context,index){
              return new ListTile(
                title:new Text('${listItem[index]}'),
              );
            }
          )
        ),
      );
  }
}
