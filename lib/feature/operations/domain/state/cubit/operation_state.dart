part of 'operation_cubit.dart';

@freezed
class OperationState with _$OperationState {
  const factory OperationState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    @Default([]) List<OperationEntity> operationsList,
  }) = _OperationState;

  factory OperationState.fromJson(Map<String, dynamic> json) =>
      _$OperationStateFromJson(json);
}
