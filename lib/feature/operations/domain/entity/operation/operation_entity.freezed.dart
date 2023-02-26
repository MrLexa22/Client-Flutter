// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationEntity _$OperationEntityFromJson(Map<String, dynamic> json) {
  return _OperationEntity.fromJson(json);
}

/// @nodoc
mixin _$OperationEntity {
  int get idOperation => throw _privateConstructorUsedError;
  String get numberOperation => throw _privateConstructorUsedError;
  String get nameOperation => throw _privateConstructorUsedError;
  String? get descriptionOperation => throw _privateConstructorUsedError;
  DateTime get dateOperation => throw _privateConstructorUsedError;
  double get valueOperation => throw _privateConstructorUsedError;
  bool? get isDeleted => throw _privateConstructorUsedError;
  CategoryEntity? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationEntityCopyWith<OperationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationEntityCopyWith<$Res> {
  factory $OperationEntityCopyWith(
          OperationEntity value, $Res Function(OperationEntity) then) =
      _$OperationEntityCopyWithImpl<$Res, OperationEntity>;
  @useResult
  $Res call(
      {int idOperation,
      String numberOperation,
      String nameOperation,
      String? descriptionOperation,
      DateTime dateOperation,
      double valueOperation,
      bool? isDeleted,
      CategoryEntity? category});

  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class _$OperationEntityCopyWithImpl<$Res, $Val extends OperationEntity>
    implements $OperationEntityCopyWith<$Res> {
  _$OperationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idOperation = null,
    Object? numberOperation = null,
    Object? nameOperation = null,
    Object? descriptionOperation = freezed,
    Object? dateOperation = null,
    Object? valueOperation = null,
    Object? isDeleted = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      idOperation: null == idOperation
          ? _value.idOperation
          : idOperation // ignore: cast_nullable_to_non_nullable
              as int,
      numberOperation: null == numberOperation
          ? _value.numberOperation
          : numberOperation // ignore: cast_nullable_to_non_nullable
              as String,
      nameOperation: null == nameOperation
          ? _value.nameOperation
          : nameOperation // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionOperation: freezed == descriptionOperation
          ? _value.descriptionOperation
          : descriptionOperation // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOperation: null == dateOperation
          ? _value.dateOperation
          : dateOperation // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueOperation: null == valueOperation
          ? _value.valueOperation
          : valueOperation // ignore: cast_nullable_to_non_nullable
              as double,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryEntityCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryEntityCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OperationEntityCopyWith<$Res>
    implements $OperationEntityCopyWith<$Res> {
  factory _$$_OperationEntityCopyWith(
          _$_OperationEntity value, $Res Function(_$_OperationEntity) then) =
      __$$_OperationEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idOperation,
      String numberOperation,
      String nameOperation,
      String? descriptionOperation,
      DateTime dateOperation,
      double valueOperation,
      bool? isDeleted,
      CategoryEntity? category});

  @override
  $CategoryEntityCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_OperationEntityCopyWithImpl<$Res>
    extends _$OperationEntityCopyWithImpl<$Res, _$_OperationEntity>
    implements _$$_OperationEntityCopyWith<$Res> {
  __$$_OperationEntityCopyWithImpl(
      _$_OperationEntity _value, $Res Function(_$_OperationEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idOperation = null,
    Object? numberOperation = null,
    Object? nameOperation = null,
    Object? descriptionOperation = freezed,
    Object? dateOperation = null,
    Object? valueOperation = null,
    Object? isDeleted = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_OperationEntity(
      idOperation: null == idOperation
          ? _value.idOperation
          : idOperation // ignore: cast_nullable_to_non_nullable
              as int,
      numberOperation: null == numberOperation
          ? _value.numberOperation
          : numberOperation // ignore: cast_nullable_to_non_nullable
              as String,
      nameOperation: null == nameOperation
          ? _value.nameOperation
          : nameOperation // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionOperation: freezed == descriptionOperation
          ? _value.descriptionOperation
          : descriptionOperation // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOperation: null == dateOperation
          ? _value.dateOperation
          : dateOperation // ignore: cast_nullable_to_non_nullable
              as DateTime,
      valueOperation: null == valueOperation
          ? _value.valueOperation
          : valueOperation // ignore: cast_nullable_to_non_nullable
              as double,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OperationEntity
    with DiagnosticableTreeMixin
    implements _OperationEntity {
  const _$_OperationEntity(
      {required this.idOperation,
      required this.numberOperation,
      required this.nameOperation,
      this.descriptionOperation,
      required this.dateOperation,
      required this.valueOperation,
      this.isDeleted,
      this.category});

  factory _$_OperationEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OperationEntityFromJson(json);

  @override
  final int idOperation;
  @override
  final String numberOperation;
  @override
  final String nameOperation;
  @override
  final String? descriptionOperation;
  @override
  final DateTime dateOperation;
  @override
  final double valueOperation;
  @override
  final bool? isDeleted;
  @override
  final CategoryEntity? category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OperationEntity(idOperation: $idOperation, numberOperation: $numberOperation, nameOperation: $nameOperation, descriptionOperation: $descriptionOperation, dateOperation: $dateOperation, valueOperation: $valueOperation, isDeleted: $isDeleted, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OperationEntity'))
      ..add(DiagnosticsProperty('idOperation', idOperation))
      ..add(DiagnosticsProperty('numberOperation', numberOperation))
      ..add(DiagnosticsProperty('nameOperation', nameOperation))
      ..add(DiagnosticsProperty('descriptionOperation', descriptionOperation))
      ..add(DiagnosticsProperty('dateOperation', dateOperation))
      ..add(DiagnosticsProperty('valueOperation', valueOperation))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OperationEntity &&
            (identical(other.idOperation, idOperation) ||
                other.idOperation == idOperation) &&
            (identical(other.numberOperation, numberOperation) ||
                other.numberOperation == numberOperation) &&
            (identical(other.nameOperation, nameOperation) ||
                other.nameOperation == nameOperation) &&
            (identical(other.descriptionOperation, descriptionOperation) ||
                other.descriptionOperation == descriptionOperation) &&
            (identical(other.dateOperation, dateOperation) ||
                other.dateOperation == dateOperation) &&
            (identical(other.valueOperation, valueOperation) ||
                other.valueOperation == valueOperation) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idOperation,
      numberOperation,
      nameOperation,
      descriptionOperation,
      dateOperation,
      valueOperation,
      isDeleted,
      category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OperationEntityCopyWith<_$_OperationEntity> get copyWith =>
      __$$_OperationEntityCopyWithImpl<_$_OperationEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperationEntityToJson(
      this,
    );
  }
}

abstract class _OperationEntity implements OperationEntity {
  const factory _OperationEntity(
      {required final int idOperation,
      required final String numberOperation,
      required final String nameOperation,
      final String? descriptionOperation,
      required final DateTime dateOperation,
      required final double valueOperation,
      final bool? isDeleted,
      final CategoryEntity? category}) = _$_OperationEntity;

  factory _OperationEntity.fromJson(Map<String, dynamic> json) =
      _$_OperationEntity.fromJson;

  @override
  int get idOperation;
  @override
  String get numberOperation;
  @override
  String get nameOperation;
  @override
  String? get descriptionOperation;
  @override
  DateTime get dateOperation;
  @override
  double get valueOperation;
  @override
  bool? get isDeleted;
  @override
  CategoryEntity? get category;
  @override
  @JsonKey(ignore: true)
  _$$_OperationEntityCopyWith<_$_OperationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
