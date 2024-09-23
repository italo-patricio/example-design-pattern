import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:example/infraestructure/http_get_client.dart';

class DioAdapter implements HttpGetClient {
  final Dio client;

  DioAdapter({required this.client});

  Future<dynamic> get({required String url}) async {
    final response = await client.get(url);
    return response.data;
  }
}
