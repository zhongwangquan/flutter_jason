import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    getHttp();
    return Container(
      child: Center(
        child:Text('首页')
      ),
    );
  }

  void getHttp() async {
    print('get');
    try {
      Response response = await Dio().get("http://yapi.flutterweb.cn/mock/270/api/first?a=3");
      print(response);
    } catch (e) {
      print(e);
    }
  }
}