import 'package:dio/dio.dart';
import 'package:http/http.dart';

import 'package:example/infraestructure/loggers/console_log.dart';
import 'package:example/infraestructure/decorators/http_get_log_decorator.dart';

import 'package:example/infraestructure/adapters/dio_adapter.dart';

import 'package:example/infraestructure/adapters/http_adapter.dart';
import 'package:example/infraestructure/http_get_client.dart';

// Http
HttpGetClient makeHttpGetClient(String basepath) => HttpGetLog(
      basePath: basepath,
      logger: ConsoleLog(),
      decoratee: HttpAdapter(client: Client()),
    );

// Dio
// HttpGetClient makeHttpGetClient() => HttpGetLog(logger: ConsoleLog(), decoratee: DioAdapter(client: Dio())) ;