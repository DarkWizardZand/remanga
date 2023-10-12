import 'package:freezed_annotation/freezed_annotation.dart';

part 'userDto.freezed.dart';
part 'userDto.g.dart';

@freezed
class UserDto with _$UserDto {

  factory UserDto({
    required String email,
    required String password,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}