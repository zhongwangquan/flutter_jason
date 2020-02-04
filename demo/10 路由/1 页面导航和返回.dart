import 'package:flutter/material.dart';
void main () {
  runApp(MaterialApp(
    // title: '我是第一屏',
    home: new FirstScreen()
  ));
}
  

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('第一屏')),
      body: Center(child: RaisedButton(
        child: Text('查看商品详情'),
        onPressed: (){
          Navigator.push(
            context, 
            new MaterialPageRoute(
              builder: (context) => new SecondScreen()
            )
          );
        },
        ),
      )
    );
  }
}


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('第二屏')),
      body: Center(child: RaisedButton(
        child: Text('我是子页-返回'),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
      )
    );
  }
}