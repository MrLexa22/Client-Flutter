// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_operation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailOperationState {
  AsyncSnapshot<dynamic> get ssyncSnapshot =>
      throw _privateConstructorUsedError;
  OperationEntity? get operationEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailOperationStateCopyWith<DetailOperationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailOperationStateCopyWith<$Res> {
  factory $DetailOperationStateCopyWith(DetailOperationState value,
          $Res Function(DetailOperationState) then) =
      _$DetailOperationStateCopyWithImpl<$Res, DetailOperationState>;
  @useResult
  $Res call(
      {AsyncSnapshot<dynamic> ssyncSnapshot, OperationEntity? operationEntity});

  $OperationEntityCopyWith<$Res>? get operationEntity;
}

/// @nodoc
class _$DetailOperationStateCopyWithImpl<$Res,
        $Val extends DetailOperationState>
    implements $DetailOperationStateCopyWith<$Res> {
  _$DetailOperationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssyncSnapshot = null,
    Object? operationEntity = freezed,
  }) {
    return _then(_value.copyWith(
      ssyncSnapshot: null == ssyncSnapshot
          ? _value.ssyncSnapshot
          : ssyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      operationEntity: freezed == operationEntity
          ? _value.operationEntity
          : operationEntity // ignore: cast_nullable_to_non_nullable
              as OperationEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OperationEntityCopyWith<$Res>? get operationEntity {
    if (_value.operationEntity == null) {
      return null;
    }

    return $OperationEntityCopyWith<$Res>(_value.operationEntity!, (value) {
      return _then(_value.copyWith(operationEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailOperationStateCopyWith<$Res>
    implements $DetailOperationStateCopyWith<$Res> {
  factory _$$_DetailOperationStateCopyWith(_$_DetailOperationState value,
          $Res Function(_$_DetailOperationState) then) =
      __$$_DetailOperationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncSnapshot<dynamic> ssyncSnapshot, OperationEntity? operationEntity});

  @override
  $OperationEntityCopyWith<$Res>? get operationEntity;
}

/// @nodoc
class __$$_DetailOperationStateCopyWithImpl<$Res>
    extends _$DetailOperationStateCopyWithImpl<$Res, _$_DetailOperationState>
    implements _$$_DetailOperationStateCopyWith<$Res> {
  __$$_DetailOperationStateCopyWithImpl(_$_DetailOperationState _value,
      $Res Function(_$_DetailOperationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ssyncSnapshot = null,
    Object? operationEntity = freezed,
  }) {
    return _then(_$_DetailOperationState(
      ssyncSnapshot: null == ssyncSnapshot
          ? _value.ssyncSnapshot
          : ssyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>,
      operationEntity: freezed == operationEntity
          ? _value.operationEntity
          : operationEntity // ignore: cast_nullable_to_non_nullable
              as OperationEntity?,
    ));
  }
}

/// @nodoc

class _$_DetailOperationState implements _DetailOperationState {
  const _$_DetailOperationState(
      {this.ssyncSnapshot = const AsyncSnapshot.nothing(),
      this.operationEntity});

  @override
  @JsonKey()
  final AsyncSnapshot<dynamic> ssyncSnapshot;
  @override
  final OperationEntity? operationEntity;

  @override
  String toString() {
    return 'DetailOperationState(ssyncSnapshot: $ssyncSnapshot, operationEntity: $operationEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailOperationState &&
            (identical(other.ssyncSnapshot, ssyncSnapshot) ||
                other.ssyncSnapshot == ssyncSnapshot) &&
            (identical(other.operationEntity, operationEntity) ||
                other.operationEntity == operationEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ssyncSnapshot, operationEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailOperationStateCopyWith<_$_DetailOperationState> get copyWith =>
      __$$_DetailOperationStateCopyWithImpl<_$_DetailOperationState>(
          this, _$identity);
}

abstract class _DetailOperationState implements DetailOperationState {
  const factory _DetailOperationState(
      {final AsyncSnapshot<dynamic> ssyncSnapshot,
      final OperationEntity? operationEntity}) = _$_DetailOperationState;

  @override
  AsyncSnapshot<dynamic> get ssyncSnapshot;
  @override
  OperationEntity? get operationEntity;
  @override
  @JsonKey(ignore: true)
  _$$_DetailOperationStateCopyWith<_$_DetailOperationState> get copyWith =>
      throw _privateConstructorUsedError;
}
