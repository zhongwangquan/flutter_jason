import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController typeController = TextEditingController();
  String showText = '0';
  String showNum;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(title: Text('查询重名人数')),
         body: SingleChildScrollView(
           child: Container(
              height: 4000,
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
                  RaisedButton(
                    onPressed: _searchName,
                    child: Text('查询'),
                  ),
                  RaisedButton(
                    onPressed: _searchName,
                    child: Text('查询'),
                  ),
                  Text(
                    '查询的名字为：$showText。总重复人数为$showNum',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  )
              ],),
              )
         ,)
        ),
    );
  }

  Future getHttp(String name) async {
    try {
      Response response = await Dio().post(
        "http://yapi.flutterweb.cn/mock/270/api/post",
        data: {'name': name}
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
            showNum=val['num'].toString();
          });
        }
      );
    }
  }
}