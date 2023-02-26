import 'package:dio/dio.dart';

abstract class AppApi {
  Future<dynamic> signUp({
    required String password,
    required String username,
    required String email,
  });

  Future<dynamic> signIn({
    required String password,
    required String username,
  });

  Future<dynamic> getProfile();

  Future<dynamic> userUpdate({
    String? username,
    String? email,
  });

  Future<dynamic> passwordUpdate({
    required String oldPassword,
    required String newPassword,
  });

  Future<dynamic> refreshToken({String? refreshToken});

  Future<dynamic> request(String path);

  Future<dynamic> fetch(RequestOptions requestOptions);

  Future<dynamic> fetchOperation();

  Future<dynamic> fetchOperationsWithFilters(
      int filter_Deleted, int filter_Category, String search);

  Future<dynamic> fetchOperationById(String id);

  Future<dynamic> fetchCategories();

  Future<dynamic> deleteOperation(String id, bool isDeleted);

  Future<dynamic> createOperation(
    String numberOperation,
    String nameOperation,
    String? descriptionOperation,
    DateTime dateOperation,
    double valueOperation,
    int category_ID,
  );

  Future<dynamic> updateOperation(
    int idOperation,
    String numberOperation,
    String nameOperation,
    String? descriptionOperation,
    DateTime dateOperation,
    double valueOperation,
    int category_ID,
  );
}
