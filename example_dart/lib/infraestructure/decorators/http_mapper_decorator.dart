import 'package:example/domain/mappers/mapper.dart';
import 'package:example/infraestructure/http_get_client.dart';

final class HttpMapperDecorator<T> implements HttpGetMapper {
  final HttpGetClient decoratee;

  HttpMapperDecorator({required this.decoratee});

  @override
  Future<T> get({required String url, required Mapper mapper}) async {
    final result = await decoratee.get(url: url);
    return mapper.toMapper(result);
  }
}
