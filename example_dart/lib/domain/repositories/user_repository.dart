import 'package:example/domain/dtos/user_dto.dart';

abstract interface class UserRepository {
  Future<UserDto> getUser(int id);
  Future<List<UserDto>> getUsers();
}
