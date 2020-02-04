import 'package:flutter/material.dart';


void main () => runApp(MyApp(
  //要调用MyApp需要传入一个list集合
  listItem: new List.generate(1000, (i)=> "Item数据 $i")
));

class MyApp extends StatelessWidget{
   //接收父类传入的1000条数据
  final List listItem; // 定义变量
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new SecondScreen(secondItem: listItem)
                    )
                  );
                }
              );
            }
          )
        ),
      );
  }
}

class SecondScreen extends StatelessWidget {
   final List secondItem; // 定义变量
  SecondScreen({key, @required this.secondItem}):super(key:key); // 接受数据

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('第二2篇')),
      body: Center(child: RaisedButton(
        child: Text("secondItem[index]"),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
      )
    );
  }
}