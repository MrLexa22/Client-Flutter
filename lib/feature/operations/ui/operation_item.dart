import 'package:flutter/material.dart';
import 'package:flutter_work_with_api/feature/operations/domain/entity/operation/operation_entity.dart';

import 'detail_operation_screen.dart';

class OperationItem extends StatelessWidget {
  const OperationItem({super.key, required this.operationEntity});

  final OperationEntity operationEntity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) =>
              DetailOperationPost(id: operationEntity.idOperation.toString()),
        ));
      },
      child: Column(
        children: [
          Text("Наименование операции: ${operationEntity.nameOperation}"),
          Text(
              "Дата и время операции: ${operationEntity.dateOperation.toLocal().toString()}"),
          Text("Сумма операции: ${operationEntity.valueOperation.toString()}"),
          Text("Категория: ${operationEntity.category?.nameCategory ?? ""}"),
          Text(
              "Логическое удаление: ${operationEntity.isDeleted == true ? "удалено" : "не удалено"}"),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
