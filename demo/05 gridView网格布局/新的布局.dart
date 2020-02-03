import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
      return MaterialApp(
        title:'qwqweqwe',
        home:Scaffold(
          appBar: AppBar(title: new Text('qweqewerwqwq1')),
          body:GridView( //当前主流写法
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( // 根据数量扩展
                crossAxisCount: 3,
                mainAxisSpacing: 2.0, // 当前相当于纵轴的间距
                crossAxisSpacing: 2.0,
                childAspectRatio: 0.7 // 横竖比
              ),
              children: <Widget>[
                new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
              ],
            ),
        ),
      );
  }
}
