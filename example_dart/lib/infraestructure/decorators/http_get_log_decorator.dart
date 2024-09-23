import 'package:example/infraestructure/http_get_client.dart';
import 'package:example/infraestructure/loggers/logger.dart';

class HttpGetLog implements HttpGetClient {
  final HttpGetClient decoratee;
  final Logger logger;
  final String basePath;

  HttpGetLog({
    required this.logger,
    required this.decoratee,
    required this.basePath,
  });

  @override
  Future<dynamic> get({required String url}) async {
    final response = await decoratee.get(url: '$basePath$url');
    logger.log(key: 'http_request', value: {'url': '$basePath$url', 'response': response});
    return response;
  }
}
