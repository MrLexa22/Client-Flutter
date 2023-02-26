import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_work_with_api/feature/main/ui/main_screen.dart';
import 'package:flutter_work_with_api/feature/operations/domain/state/cubit/operation_cubit.dart';
import 'package:flutter_work_with_api/feature/operations/ui/operation_item.dart';

String dropdownValue_deleted = list_filtDelete.first;
const List<String> list_filtDelete = <String>[
  'Все', //0
  'Не удалённые', //1
  'Удалённые', //2
];

String dropdownValue_category = list_filtCategory.first;
const List<String> list_filtCategory = <String>[
  'Все',
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

class OperationList extends StatelessWidget {
  const OperationList({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return BlocConsumer<OperationCubit, OperationState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.operationsList.isNotEmpty) {
          return Column(
            children: [
              TextButton(
                onPressed: () {
                  context.read<OperationCubit>().fetchOperations();
                },
                child: const Text("Обновить список (без фильтров и поиска)"),
              ),
              const SizedBox(height: 5),
              const Text("Поиск: "),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 0, left: 15, right: 15),
                child: TextFormField(
                  controller: searchController,
                  decoration: const InputDecoration(
                    labelText: "Поиск",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Text("Фильтрация по удалённым: "),
              const DropdownButton_FilterDeleted(),
              const Text("Фильтрация по категории: "),
              const DropdownButton_FilterCategory(),
              TextButton(
                onPressed: () {
                  context.read<OperationCubit>().fetchOperationsWithFilters(
                      dropdownValue_deleted,
                      dropdownValue_category,
                      searchController.text);
                },
                child: const Text("Применить фильтры"),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.operationsList.length,
                  itemBuilder: (context, index) {
                    return OperationItem(
                        operationEntity: state.operationsList[index]);
                  },
                ),
              ),
            ],
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class DropdownButton_FilterDeleted extends StatefulWidget {
  const DropdownButton_FilterDeleted({super.key});

  @override
  State<DropdownButton_FilterDeleted> createState() =>
      _DropdownButton_FilterDeletedState();
}

class _DropdownButton_FilterDeletedState
    extends State<DropdownButton_FilterDeleted> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue_deleted,
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
          dropdownValue_deleted = value!;
        });
      },
      items: list_filtDelete.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownButton_FilterCategory extends StatefulWidget {
  const DropdownButton_FilterCategory({super.key});

  @override
  State<DropdownButton_FilterCategory> createState() =>
      _DropdownButton_FilterCategoryState();
}

class _DropdownButton_FilterCategoryState
    extends State<DropdownButton_FilterCategory> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue_category,
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
          dropdownValue_category = value!;
        });
      },
      items: list_filtCategory.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
