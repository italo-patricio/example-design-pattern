import 'package:example/domain/dtos/user_dto.dart';
import 'package:example/domain/mappers/mapper.dart';
import 'package:example/domain/repositories/user_repository.dart';

import 'package:example/factories/make_user_dto.dart';

class UserRepositoryImpl implements UserRepository {
  final HttpGetMapper httpMapperDecorator;

  UserRepositoryImpl({required this.httpMapperDecorator});

  @override
  Future<UserDto> getUser(int id) async {
    return await httpMapperDecorator.get(
        url: '/user/$id', mapper: makeUserDtoMapper());
  }

  @override
  Future<List<UserDto>> getUsers() async {
    return await httpMapperDecorator.get(
        url: '/user', mapper: makeListUserDtoMapper());
  }
}
