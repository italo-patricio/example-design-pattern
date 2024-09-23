import 'package:example/domain/dtos/user_dto.dart';
import 'package:example/domain/mappers/mapper.dart';

final class UserDtoMapper implements Mapper<UserDto> {

  @override
  UserDto toMapper(dynamic json) {
    return UserDto(id: json?['id'], name: json?['name']);
  }
}

final class UserListDtoMapper implements Mapper<List<UserDto>> {

  @override
  List<UserDto> toMapper(dynamic json) {
    return toListMapper(json);
  }

  List<UserDto> toListMapper(List jsonList) =>
      jsonList.map<UserDto>((it) => UserDtoMapper().toMapper(it)).toList();
}
