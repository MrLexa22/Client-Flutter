// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OperationEntity _$$_OperationEntityFromJson(Map<String, dynamic> json) =>
    _$_OperationEntity(
      idOperation: json['idOperation'] as int,
      numberOperation: json['numberOperation'] as String,
      nameOperation: json['nameOperation'] as String,
      descriptionOperation: json['descriptionOperation'] as String?,
      dateOperation: DateTime.parse(json['dateOperation'] as String),
      valueOperation: (json['valueOperation'] as num).toDouble(),
      isDeleted: json['isDeleted'] as bool?,
      category: json['category'] == null
          ? null
          : CategoryEntity.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OperationEntityToJson(_$_OperationEntity instance) =>
    <String, dynamic>{
      'idOperation': instance.idOperation,
      'numberOperation': instance.numberOperation,
      'nameOperation': instance.nameOperation,
      'descriptionOperation': instance.descriptionOperation,
      'dateOperation': instance.dateOperation.toIso8601String(),
      'valueOperation': instance.valueOperation,
      'isDeleted': instance.isDeleted,
      'category': instance.category,
    };
