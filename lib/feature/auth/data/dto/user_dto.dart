import 'package:flutter_work_with_api/feature/auth/domain/edities/user_entity/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final dynamic id;
  final dynamic userName;
  final dynamic email;
  final dynamic accessToken;
  final dynamic refreshToken;
  final dynamic isDeleted;

  UserDto(
    this.id,
    this.userName,
    this.email,
    this.accessToken,
    this.refreshToken,
    this.isDeleted,
  );

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  UserEntity toEntity() {
    return UserEntity(
        email: email.toString(),
        username: userName.toString(),
        id: id.toString(),
        access_token: accessToken,
        refresh_token: refreshToken,
        isDeleted: isDeleted);
  }
}
