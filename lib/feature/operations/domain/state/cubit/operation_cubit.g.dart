// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OperationState _$$_OperationStateFromJson(Map<String, dynamic> json) =>
    _$_OperationState(
      operationsList: (json['operationsList'] as List<dynamic>?)
              ?.map((e) => OperationEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OperationStateToJson(_$_OperationState instance) =>
    <String, dynamic>{
      'operationsList': instance.operationsList,
    };
