import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_work_with_api/app/components/app_snack_bar.dart';
import 'package:flutter_work_with_api/app/di/init_di.dart';
import 'package:flutter_work_with_api/app/domain/error_entity/error_entity.dart';
import 'package:flutter_work_with_api/feature/operations/domain/state/detail_operation/cubit/detail_operation_cubit.dart';

import '../domain/entity/operation/operation_entity.dart';
import '../domain/operation_repo.dart';
import '../domain/state/cubit/operation_cubit.dart';

class DetailOperationPost extends StatelessWidget {
  const DetailOperationPost({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DetailOperationCubit(locator.get<OperationRepo>(), id)
            ..fetchOperations(),
      child: const _DetailOperationView(),
    );
  }
}

class _DetailOperationView extends StatelessWidget {
  const _DetailOperationView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<DetailOperationCubit, DetailOperationState>(
        builder: (context, state) {
          if (state.ssyncSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text("Загрузка данных..."),
            );
          }
          if (state.operationEntity != null) {
            return _OperationDetailItem(
              operationEntity: state.operationEntity!,
            );
          }
          return const Center(
            child: Text("Ошибка данных"),
          );
        },
        listener: (context, state) {
          if (state.ssyncSnapshot.hasError) {
            AppSnackBar.showSnackBarWithError(
                context, ErrorEntity.fromException(state.ssyncSnapshot.error));
          }
        },
      ),
    );
  }
}

class _OperationDetailItem extends StatelessWidget {
  const _OperationDetailItem({required this.operationEntity});

  final OperationEntity operationEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: ListView(
        children: [
          Text("Наименование операции: ${operationEntity.nameOperation}"),
          const SizedBox(height: 10),
          Text("Номер операции: ${operationEntity.numberOperation}"),
          const SizedBox(height: 10),
          Text("Описание операции: ${operationEntity.descriptionOperation}"),
          const SizedBox(height: 10),
          Text(
              "Дата и время операции: ${operationEntity.dateOperation.toLocal().toString()}"),
          const SizedBox(height: 10),
          Text("Сумма операции: ${operationEntity.valueOperation.toString()}"),
          const SizedBox(height: 10),
          Text(
              "Категория операции: ${operationEntity.category?.nameCategory.toString()}"),
          const SizedBox(height: 10),
          Text(
              "Логически удалён?: ${operationEntity.isDeleted == true ? "удалён" : "не удалён"}"),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              if (operationEntity.isDeleted == true) {
                context
                    .read<DetailOperationCubit>()
                    .deleteOperation(false)
                    .then((_) {});
              } else {
                context
                    .read<DetailOperationCubit>()
                    .deleteOperation(true)
                    .then((_) {});
              }
            },
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(
                    const Size(double.maxFinite, 40))),
            child: operationEntity.isDeleted == true
                ? const Text("Восстановить")
                : const Text("Удалить"),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => _UpdateOperationDialog(
                  operationEntity: operationEntity,
                ),
              );
            },
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(
                    const Size(double.maxFinite, 40))),
            child: const Text("Изменить"),
          ),
        ],
      ),
    );
  }
}

const List<String> list = <String>[
  'Инвестиционная операция',
  'Перевод денег',
  'Путешествия',
  'Супермаркеты',
  'Рестораны и кафе',
  'ЖКХ, связь, интернет',
  'Подписки',
  'Развлечения',
  'Иные',
];

String dropdownValue = list.first;

String? emptyValidator(String? value) {
  if (value?.isEmpty == true) {
    return "Обязательное поле";
  }
  return null;
}

class DropdownButton_Category extends StatefulWidget {
  const DropdownButton_Category({super.key});

  @override
  State<DropdownButton_Category> createState() =>
      _DropdownButton_CategoryState();
}

class _DropdownButton_CategoryState extends State<DropdownButton_Category> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class _UpdateOperationDialog extends StatelessWidget {
  const _UpdateOperationDialog({super.key, required this.operationEntity});

  final OperationEntity operationEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailOperationCubit(
          locator.get<OperationRepo>(), operationEntity.idOperation.toString()),
      child: __UpdateOperationDialogState(
        operationEntity: operationEntity,
      ),
    );
  }
}

class __UpdateOperationDialogState extends StatelessWidget {
  const __UpdateOperationDialogState(
      {super.key, required this.operationEntity});

  final OperationEntity operationEntity;

  @override
  Widget build(BuildContext context) {
    final numberOperationController = TextEditingController();
    final nameOperationController = TextEditingController();
    final descriptionOperationController = TextEditingController();
    final dateOperationController = TextEditingController();
    final valueOperationController = TextEditingController();
    numberOperationController.text = operationEntity.numberOperation;
    nameOperationController.text = operationEntity.nameOperation;
    descriptionOperationController.text = operationEntity.descriptionOperation!;
    dateOperationController.text =
        operationEntity.dateOperation.toLocal().toString();
    valueOperationController.text = operationEntity.valueOperation.toString();
    dropdownValue = operationEntity.category!.nameCategory;
    return SimpleDialog(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const DropdownButton_Category(),
                TextFormField(
                  controller: numberOperationController,
                  validator: emptyValidator,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  maxLength: 6,
                  decoration: const InputDecoration(
                    labelText: "Номер операции",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: nameOperationController,
                  validator: emptyValidator,
                  maxLength: 50,
                  decoration: const InputDecoration(
                    labelText: "Наименование операции",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: descriptionOperationController,
                  validator: emptyValidator,
                  maxLength: 200,
                  decoration: const InputDecoration(
                    labelText: "Описание операции",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: valueOperationController,
                  validator: emptyValidator,
                  maxLength: 50,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Сумма операции",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: dateOperationController,
                  validator: emptyValidator,
                  maxLength: 25,
                  decoration: const InputDecoration(
                    labelText: "Дата операции",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    context
                        .read<DetailOperationCubit>()
                        .updateOperation(
                          operationEntity.idOperation,
                          numberOperationController.text,
                          nameOperationController.text,
                          descriptionOperationController.text,
                          DateTime.parse(dateOperationController.text),
                          double.parse(valueOperationController.text),
                          dropdownValue,
                        )
                        .then((_) => Navigator.of(context).pop());
                  },
                  child: const Text("Изменить операцию"),
                ),
              ],
            ))
      ],
    );
  }
}
