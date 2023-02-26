import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_work_with_api/feature/auth/domain/edities/user_entity/user_entity.dart';
import 'package:flutter_work_with_api/feature/operations/domain/entity/category/category_entity.dart';
import 'package:flutter_work_with_api/feature/operations/domain/state/cubit/operation_cubit.dart';
import 'package:flutter_work_with_api/feature/operations/ui/operation_list.dart';

import '../../auth/domain/auth_state/auth_cubit.dart';
import '../../auth/ui/user_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.userEntity}) : super(key: key);
  final UserEntity userEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Список операций"), actions: [
        IconButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserScreen(),
                )),
            icon: const Icon(Icons.account_box)),
        IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const _CreateOperationDialog(),
              );
            },
            icon: const Icon(Icons.add)),
      ]),
      body: const OperationList(),
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

class _CreateOperationDialog extends StatefulWidget {
  const _CreateOperationDialog({super.key});

  @override
  State<_CreateOperationDialog> createState() => __CreateOperationDialogState();
}

class __CreateOperationDialogState extends State<_CreateOperationDialog> {
  final numberOperationController = TextEditingController();
  final nameOperationController = TextEditingController();
  final descriptionOperationController = TextEditingController();
  final dateOperationController = TextEditingController();
  final valueOperationController = TextEditingController();

  @override
  void dispose() {
    numberOperationController.dispose();
    nameOperationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const DropdownButtonExample(),
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
                  maxLength: 20,
                  decoration: const InputDecoration(
                    labelText: "Дата операции",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                    onPressed: () {
                      try {
                        context.read<OperationCubit>().createOperation(
                              numberOperationController.text,
                              nameOperationController.text,
                              descriptionOperationController.text,
                              DateTime.parse(dateOperationController.text),
                              double.parse(valueOperationController.text),
                              dropdownValue,
                            );
                        Navigator.pop(context);
                      } catch (_) {}
                    },
                    child: const Text("Создать операцию"))
              ],
            ))
      ],
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

String dropdownValue = list.first;

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
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

String? emptyValidator(String? value) {
  if (value?.isEmpty == true) {
    return "Обязательное поле";
  }
  return null;
}
