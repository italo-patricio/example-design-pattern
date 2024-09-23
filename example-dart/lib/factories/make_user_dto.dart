import 'package:example/domain/dtos/user_dto.dart';
import 'package:example/data/mappers/user_dto_mapper.dart';
import 'package:example/domain/mappers/mapper.dart';

Mapper<UserDto> makeUserDtoMapper() => UserDtoMapper();
Mapper<List<UserDto>> makeListUserDtoMapper() => UserListDtoMapper();
