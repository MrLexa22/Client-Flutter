// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OperationState _$OperationStateFromJson(Map<String, dynamic> json) {
  return _OperationState.fromJson(json);
}

/// @nodoc
mixin _$OperationState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<OperationEntity> get operationsList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationStateCopyWith<OperationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationStateCopyWith<$Res> {
  factory $OperationStateCopyWith(
          OperationState value, $Res Function(OperationState) then) =
      _$OperationStateCopyWithImpl<$Res, OperationState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<OperationEntity> operationsList});
}

/// @nodoc
class _$OperationStateCopyWithImpl<$Res, $Val extends OperationState>
    implements $OperationStateCopyWith<$Res> {
  _$OperationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? operationsList = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      operationsList: null == operationsList
          ? _value.operationsList
          : operationsList // ignore: cast_nullable_to_non_nullable
              as List<OperationEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OperationStateCopyWith<$Res>
    implements $OperationStateCopyWith<$Res> {
  factory _$$_OperationStateCopyWith(
          _$_OperationState value, $Res Function(_$_OperationState) then) =
      __$$_OperationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<OperationEntity> operationsList});
}

/// @nodoc
class __$$_OperationStateCopyWithImpl<$Res>
    extends _$OperationStateCopyWithImpl<$Res, _$_OperationState>
    implements _$$_OperationStateCopyWith<$Res> {
  __$$_OperationStateCopyWithImpl(
      _$_OperationState _value, $Res Function(_$_OperationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? operationsList = null,
  }) {
    return _then(_$_OperationState(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      operationsList: null == operationsList
          ? _value._operationsList
          : operationsList // ignore: cast_nullable_to_non_nullable
              as List<OperationEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OperationState implements _OperationState {
  const _$_OperationState(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<OperationEntity> operationsList = const []})
      : _operationsList = operationsList;

  factory _$_OperationState.fromJson(Map<String, dynamic> json) =>
      _$$_OperationStateFromJson(json);

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  final List<OperationEntity> _operationsList;
  @override
  @JsonKey()
  List<OperationEntity> get operationsList {
    if (_operationsList is EqualUnmodifiableListView) return _operationsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_operationsList);
  }

  @override
  String toString() {
    return 'OperationState(asyncSnapshot: $asyncSnapshot, operationsList: $operationsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OperationState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality()
                .equals(other._operationsList, _operationsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot,
      const DeepCollectionEquality().hash(_operationsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OperationStateCopyWith<_$_OperationState> get copyWith =>
      __$$_OperationStateCopyWithImpl<_$_OperationState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OperationStateToJson(
      this,
    );
  }
}

abstract class _OperationState implements OperationState {
  const factory _OperationState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<OperationEntity> operationsList}) = _$_OperationState;

  factory _OperationState.fromJson(Map<String, dynamic> json) =
      _$_OperationState.fromJson;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<OperationEntity> get operationsList;
  @override
  @JsonKey(ignore: true)
  _$$_OperationStateCopyWith<_$_OperationState> get copyWith =>
      throw _privateConstructorUsedError;
}
