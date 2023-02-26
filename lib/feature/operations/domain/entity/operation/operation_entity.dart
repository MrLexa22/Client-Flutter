import 'package:flutter/foundation.dart';
import 'package:flutter_work_with_api/feature/auth/domain/edities/user_entity/user_entity.dart';
import 'package:flutter_work_with_api/feature/operations/domain/entity/category/category_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_entity.freezed.dart';
part 'operation_entity.g.dart';

@freezed
class OperationEntity with _$OperationEntity {
  const factory OperationEntity({
    required int idOperation,
    required String numberOperation,
    required String nameOperation,
    String? descriptionOperation,
    required DateTime dateOperation,
    required double valueOperation,
    bool? isDeleted,
    CategoryEntity? category,
    //UserEntity? user,
  }) = _OperationEntity;

  factory OperationEntity.fromJson(Map<String, dynamic> json) =>
      _$OperationEntityFromJson(json);
}
