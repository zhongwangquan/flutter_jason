import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){

    var card = new Card(
      child: Column(
        children: <Widget>[
            ListTile(
              title: new Text('我是家在这里的'),
              subtitle: new Text('jison：213'),
              leading: new Icon(Icons.access_alarm,color: Colors.orange,)
            ),
            new Divider(),
            ListTile(
              title: new Text('werwer'),
              subtitle: new Text('123'),
              leading: new Icon(Icons.airline_seat_legroom_normal,color: Colors.red,)
            ),
            new Divider(),
            ListTile(
              title: new Text('werwer'),
              subtitle: new Text('123'),
              leading: new Icon(Icons.airline_seat_legroom_normal,color: Colors.red,)
            ),
            new Divider(),
        ],)
    );

      return MaterialApp(
        title:'qwqweqwe',
        home:Scaffold(
          appBar: AppBar(title: new Text('层叠布局2')),
          body: Center(child: card
        )
        ),
      );
  }
}
