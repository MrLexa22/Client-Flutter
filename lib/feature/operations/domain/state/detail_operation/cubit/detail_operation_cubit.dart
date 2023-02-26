import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_work_with_api/feature/operations/domain/entity/operation/operation_entity.dart';
import 'package:flutter_work_with_api/feature/operations/domain/operation_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_operation_state.dart';
part 'detail_operation_cubit.freezed.dart';

class DetailOperationCubit extends Cubit<DetailOperationState> {
  DetailOperationCubit(this.operationRepo, this.id)
      : super(DetailOperationState());

  final OperationRepo operationRepo;
  final String id;

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        ssyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  Future<void> fetchOperations() async {
    emit(state.copyWith(ssyncSnapshot: const AsyncSnapshot.waiting()));
    await Future.delayed(const Duration(seconds: 1));
    await operationRepo.fetchOperationById(id).then((value) {
      emit(state.copyWith(
          operationEntity: value,
          ssyncSnapshot: const AsyncSnapshot.withData(
              ConnectionState.done, "Успешное получение операции")));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> deleteOperation(bool isDeleted) async {
    emit(state.copyWith(ssyncSnapshot: const AsyncSnapshot.waiting()));
    await Future.delayed(const Duration(seconds: 1));
    await operationRepo.deleteOperation(id, isDeleted).then((_) async {
      await operationRepo.fetchOperationById(id).then((value) {
        emit(state.copyWith(
            operationEntity: value,
            ssyncSnapshot: const AsyncSnapshot.withData(
                ConnectionState.done, "Успешное получение операции")));
      });
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> updateOperation(
      int idOperation,
      String numberOperation,
      String nameOperation,
      String? descriptionOperation,
      DateTime dateOperation,
      double valueOperation,
      String category_ID) async {
    int idCateg = 0;
    if (category_ID == "Инвестиционная операция") {
      idCateg = 4;
    }
    if (category_ID == "Перевод денег") {
      idCateg = 7;
    }
    if (category_ID == "Путешествия") {
      idCateg = 8;
    }
    if (category_ID == "Супермаркеты") {
      idCateg = 9;
    }
    if (category_ID == "Рестораны и кафе") {
      idCateg = 10;
    }
    if (category_ID == "ЖКХ, связь, интернет") {
      idCateg = 11;
    }
    if (category_ID == "Подписки") {
      idCateg = 12;
    }
    if (category_ID == "Развлечения") {
      idCateg = 13;
    }
    if (category_ID == "Иные") {
      idCateg = 14;
    }

    await operationRepo
        .updateOperation(idOperation, numberOperation, nameOperation,
            descriptionOperation, dateOperation, valueOperation, idCateg)
        .then((_) async {
      await operationRepo.fetchOperationById(id).then((value) {
        emit(state.copyWith(
            operationEntity: value,
            ssyncSnapshot: const AsyncSnapshot.withData(
                ConnectionState.done, "Успешное обновление операции")));
      });
    }).catchError((error) {
      addError(error);
    });
  }
}
