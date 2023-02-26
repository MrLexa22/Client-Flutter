part of 'detail_operation_cubit.dart';

@freezed
class DetailOperationState with _$DetailOperationState {
  const factory DetailOperationState({
    @Default(AsyncSnapshot.nothing()) AsyncSnapshot ssyncSnapshot,
    OperationEntity? operationEntity,
  }) = _DetailOperationState;
}
