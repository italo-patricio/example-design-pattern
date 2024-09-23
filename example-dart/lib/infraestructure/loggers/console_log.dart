import 'package:example/infraestructure/loggers/logger.dart';

class ConsoleLog implements Logger {
  @override
  void log({required String key, required dynamic value}) {
    print('key: $key');
    print('value: $value}');
  }
}
