import 'dart:convert';

import 'package:example/infraestructure/http_get_client.dart';

import 'package:http/http.dart';

class HttpAdapter implements HttpGetClient {
  final Client client;

  HttpAdapter({required this.client});

  Future<dynamic> get({required String url}) async {
    final response = await client.get(Uri.parse(url));
    return jsonDecode(response.body);
  }
}
