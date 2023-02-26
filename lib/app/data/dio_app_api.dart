import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../domain/app_api.dart';
import '../domain/app_config.dart';
import 'auth_interceptor.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AppApi)
class DioAppApi implements AppApi {
  late final Dio dio;

  DioAppApi(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: 15000,
    );
    dio = Dio(options);
    if (kDebugMode) dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(AuthInterceptor());
  }

  @override
  Future<Response> getProfile() {
    try {
      return dio.get('/user/getProfile');
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> passwordUpdate(
      {required String oldPassword, required String newPassword}) {
    try {
      return dio.put('/user', queryParameters: {
        "oldPassword": oldPassword,
        "newPassword": newPassword,
      });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> refreshToken({String? refreshToken}) {
    try {
      return dio.post('/token/$refreshToken');
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signIn(
      {required String password, required String username}) {
    try {
      return dio
          .post('/token', data: {"userName": username, "password": password});
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signUp(
      {required String password,
      required String username,
      required String email}) {
    try {
      return dio.put('/token',
          data: {"userName": username, "password": password, "email": email});
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> userUpdate({String? username, String? email}) {
    try {
      return dio.post('/user', data: {"userName": username, "email": email});
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future request(String path) {
    try {
      return dio.request(path);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future fetch(RequestOptions requestOptions) {
    return dio.fetch(requestOptions);
  }

  @override
  Future fetchOperation() {
    return dio.get(
        "/operation?typeSort=0&filterByCategory=0&filterByIsDeleted=0&page=-1&search=");
  }

  @override
  Future createOperation(
      String numberOperation,
      String nameOperation,
      String? descriptionOperation,
      DateTime dateOperation,
      double valueOperation,
      int category_ID) {
    return dio.put("/operation", data: {
      "numberOperation": numberOperation,
      "nameOperation": nameOperation,
      "descriptionOperation": descriptionOperation,
      "dateOperation": dateOperation.toString(),
      "valueOperation": valueOperation,
      "category": {"idCategory": category_ID}
    });
  }

  @override
  Future fetchCategories() {
    return dio.get("/category?typeSort=0&search=");
  }

  @override
  Future fetchOperationById(String id) {
    return dio.get("/operation/id?idOperation=$id");
  }

  @override
  Future deleteOperation(String id, bool isDeleted) {
    return dio
        .delete("/operation?idOperation=$id&isDeleted=${isDeleted.toString()}");
  }

  @override
  Future updateOperation(
      int idOperation,
      String numberOperation,
      String nameOperation,
      String? descriptionOperation,
      DateTime dateOperation,
      double valueOperation,
      int category_ID) {
    return dio.post("/operation", data: {
      "idOperation": idOperation,
      "numberOperation": numberOperation,
      "nameOperation": nameOperation,
      "descriptionOperation": descriptionOperation,
      "dateOperation": dateOperation.toString(),
      "valueOperation": valueOperation,
      "category": {"idCategory": category_ID}
    });
  }

  @override
  Future fetchOperationsWithFilters(
      int filter_Deleted, int filter_Category, String search) {
    return dio.get(
        "/operation?typeSort=0&filterByCategory=$filter_Category&filterByIsDeleted=$filter_Deleted&page=-1&search=$search");
  }
}
