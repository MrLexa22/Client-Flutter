import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_work_with_api/feature/operations/domain/entity/category/category_entity.dart';
import 'package:flutter_work_with_api/feature/operations/domain/operation_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../../auth/domain/auth_state/auth_cubit.dart';
import '../../entity/operation/operation_entity.dart';

part 'operation_state.dart';
part 'operation_cubit.freezed.dart';
part 'operation_cubit.g.dart';

class OperationCubit extends HydratedCubit<OperationState> {
  OperationCubit(this.repo, this.authCubit)
      : super(OperationState(asyncSnapshot: AsyncSnapshot.nothing())) {
    authSub = authCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) => fetchOperations(),
        notAuthorized: (value) => logOut(),
      );
    });
  }

  final OperationRepo repo;
  final AuthCubit authCubit;
  late final StreamSubscription authSub;

  Future<void> fetchOperations() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await repo.fetchOperations().then((value) {
      final Iterable iterable = value;
      emit(state.copyWith(
          operationsList:
              iterable.map((e) => OperationEntity.fromJson(e)).toList(),
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> fetchOperationsWithFilters(
      String filter_Deleted, String filter_Category, String search) async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    int filt_del = 0;
    int filt_categ = 0;

    if (filter_Category == "Инвестиционная операция") {
      filt_categ = 4;
    }
    if (filter_Category == "Перевод денег") {
      filt_categ = 7;
    }
    if (filter_Category == "Путешествия") {
      filt_categ = 8;
    }
    if (filter_Category == "Супермаркеты") {
      filt_categ = 9;
    }
    if (filter_Category == "Рестораны и кафе") {
      filt_categ = 10;
    }
    if (filter_Category == "ЖКХ, связь, интернет") {
      filt_categ = 11;
    }
    if (filter_Category == "Подписки") {
      filt_categ = 12;
    }
    if (filter_Category == "Развлечения") {
      filt_categ = 13;
    }
    if (filter_Category == "Иные") {
      filt_categ = 14;
    }

    if (filter_Deleted == "Все") {
      filt_del = 0;
    }
    if (filter_Deleted == "Не удалённые") {
      filt_del = 1;
    }
    if (filter_Deleted == "Удалённые") {
      filt_del = 2;
    }

    await repo
        .fetchOperationsWithFilters(filt_del, filt_categ, search)
        .then((value) {
      final Iterable iterable = value;
      emit(state.copyWith(
          operationsList:
              iterable.map((e) => OperationEntity.fromJson(e)).toList(),
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> createOperation(
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

    await repo
        .createOperation(numberOperation, nameOperation, descriptionOperation,
            dateOperation, valueOperation, idCateg)
        .then((value) {
      fetchOperations();
    }).catchError((error) {
      addError(error);
    });
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  @override
  OperationState? fromJson(Map<String, dynamic> json) {
    return OperationState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(OperationState state) {
    return state.toJson();
  }

  void logOut() {
    emit(state.copyWith(
      asyncSnapshot: AsyncSnapshot.nothing(),
      operationsList: [],
    ));
  }

  @override
  Future<void> close() {
    authSub.cancel();
    return super.close();
  }
}
