// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      email: json['email'] as String,
      username: json['username'] as String,
      id: json['id'] as String,
      access_token: json['access_token'] as String?,
      refresh_token: json['refresh_token'] as String?,
      isDeleted: json['isDeleted'] as bool?,
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'id': instance.id,
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'isDeleted': instance.isDeleted,
    };
