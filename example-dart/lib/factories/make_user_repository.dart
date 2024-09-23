import 'package:example/example.dart';
import 'package:example/domain/repositories/user_repository.dart';
import 'package:example/infraestructure/decorators/http_mapper_decorator.dart';

UserRepository makeRepository(String url) => UserRepositoryImpl(
      httpMapperDecorator: HttpMapperDecorator(
        decoratee: makeHttpGetClient(url),
      ),
    );
