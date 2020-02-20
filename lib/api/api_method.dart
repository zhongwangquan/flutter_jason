import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import '../config/service_url.dart';

Future getHttp(String name) async {
    try {
      Dio dio = new Dio();
      dio.options.contentType = ContentType.parse('application/json');
      Response response = await dio.post(
        servicePath['homePageContext'],
        data: {'name': name}
      );
      print(response);
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('后端接口异常，错误代码为：${response.statusCode}');
      }
    } catch (e) {
      return print('Error: ---->${e}');
    }
  }