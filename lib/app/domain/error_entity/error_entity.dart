import 'package:dio/dio.dart';

class ErrorEntity {
  final String message;

  ErrorEntity({required this.message});

  factory ErrorEntity.fromException(dynamic error) {
    if (error is ErrorEntity) return error;
    final entity = ErrorEntity(message: "Неизвестная ошибка");
    if (error is DioError) {
      try {
        return ErrorEntity(
            message:
                error.response?.data["message"] ?? "Непредвиденная ошибка");
      } catch (error) {
        return entity;
      }
    }
    return entity;
  }
}
