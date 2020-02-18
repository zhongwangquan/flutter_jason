import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    getHttp();
    return Container(
      child: Center(
        child:Text('首页2')
      ),
    );
  }

  void getHttp() async {
    print('get');
    try {
      Response response = await Dio().get("http://yapi.flutterweb.cn/mock/270/api/first");
      print(response);
    } catch (e) {
      print(e);
    }
  }
}