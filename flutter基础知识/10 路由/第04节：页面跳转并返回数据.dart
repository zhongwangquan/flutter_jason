import 'package:flutter/material.dart';

void main () {
  runApp(MaterialApp(
    title: "页面跳转返回数据",
    home: ProductList()
  ));
}

class ProductList extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
      return Scaffold(
          appBar: AppBar(title: new Text('找人工具')),
          body: Center(child: RouteButton(),)
      );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToThis(context);
      },
      child: Text('去找人')
    );
  }

  _navigateToThis(BuildContext context) async{
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>FindPerson()
    ));
    Scaffold.of(context).showSnackBar((SnackBar(content: Text('$result'))));
  }
}
class FindPerson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('我是你要找的人')),
      body: Center(
        child: Column(children: <Widget>[
          RaisedButton(child: Text('第一个人'),onPressed:(){
            Navigator.pop(context, '第一个人，18557525812');
          }),
          RaisedButton(child: Text('第二个人'),onPressed:(){
            Navigator.pop(context, '第二个人，33333333');
          })
        ],)
      )
    );
  }
}