import 'package:flutter_work_with_api/app/domain/app_api.dart';
import 'package:flutter_work_with_api/feature/operations/domain/entity/operation/operation_entity.dart';

import '../domain/operation_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: OperationRepo)
class NetOperationRepo implements OperationRepo {
  final AppApi api;

  NetOperationRepo(this.api);

  @override
  Future<Iterable> fetchOperations() async {
    try {
      final response = await api.fetchOperation();
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Iterable> fetchCategories() async {
    try {
      final response = await api.fetchCategories();
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> createOperation(
      String numberOperation,
      String nameOperation,
      String? descriptionOperation,
      DateTime dateOperation,
      double valueOperation,
      int category_ID) async {
    try {
      final response = await api.createOperation(numberOperation, nameOperation,
          descriptionOperation, dateOperation, valueOperation, category_ID);
      return "Успешное создание операции";
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<OperationEntity> fetchOperationById(String id) async {
    try {
      final response = await api.fetchOperationById(id);
      return OperationEntity.fromJson(response.data); //["data"]);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteOperation(String id, bool isDeleted) async {
    try {
      await api.deleteOperation(id, isDeleted);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> updateOperation(
      int idOperation,
      String numberOperation,
      String nameOperation,
      String? descriptionOperation,
      DateTime dateOperation,
      double valueOperation,
      int category_ID) async {
    try {
      final response = await api.updateOperation(
          idOperation,
          numberOperation,
          nameOperation,
          descriptionOperation,
          dateOperation,
          valueOperation,
          category_ID);
      return "Успешное обновление операции";
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future fetchOperationsWithFilters(
      int filter_Deleted, int filter_Category, String search) async {
    final response = await api.fetchOperationsWithFilters(
        filter_Deleted, filter_Category, search);
    return response.data;
  }
}
