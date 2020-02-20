import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController typeController = TextEditingController();
  String showText = '0';
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text('查询重名人数')),
         body: Container(
           height: 2000,
           child: Column(children: <Widget>[
             TextField(
               controller: typeController,
               decoration: InputDecoration(
                 contentPadding: EdgeInsets.all(10.0),
                 labelText: '姓名',
                 helperText: '请输入姓名'
                ),
                autofocus: false,
              ),
              RaisedButton(
                onPressed: _searchName,
                child: Text('查询'),
              ),
              Text(
                '全省重名人数为：$showText人',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              )
           ],),
          )
        ),
    );
  }

  Future getHttp(String name) async {
    try {
      Response response = await Dio().get(
        "http://yapi.flutterweb.cn/mock/270/api/first",
        queryParameters: {'a': name}
      );
      print(response);
      return response.data;
    } catch (e) {
      print(e);
    }
  }

  void _searchName() {
    if(typeController.text.toString() == '') {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text('姓名不能为空'))
      );
    } else {
      getHttp(typeController.text.toString()).then((val){
          setState((){
            showText=val['status'].toString();
          });
        }
      );
    }
  }
}