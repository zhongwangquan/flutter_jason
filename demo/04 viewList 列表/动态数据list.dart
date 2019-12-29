import 'package:flutter/material.dart';
void main () => runApp(MyApp(
  //要调用MyApp需要传入一个list集合
  items: new List<String>.generate(1000, (i)=> "Itemsad $i")
));

class MyApp extends StatelessWidget{
   //接收父类传入的1000条数据
  final List<String> items;
  MyApp({key, @required this.items}):super(key:key);


  @override
  Widget build(BuildContext context ){
      return MaterialApp(
        title:'ListView widget',
        home:Scaffold(
          appBar: AppBar(title: new Text('woshi bar')),
          body: ListView.builder(
            itemCount: items.length, // 长度
            itemBuilder:(context,index){
              return new ListTile(
                title:new Text('${items[index]}'),
              );
            }
          )
        ),
      );
  }
}
