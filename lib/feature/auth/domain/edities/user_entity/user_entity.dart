import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@Freezed()
class UserEntity with _$UserEntity {
  const factory UserEntity(
      {required String email,
      required String username,
      required String id,
      String? access_token,
      String? refresh_token,
      @JsonKey(ignore: true) AsyncSnapshot? userState,
      bool? isDeleted}) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
