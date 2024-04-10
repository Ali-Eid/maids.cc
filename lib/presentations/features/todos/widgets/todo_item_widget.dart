import 'package:flutter/material.dart';

import '../../../../domain/models/todos_models/responses/todo_model.dart';
import '../../../resources/values_manager.dart';

class TodoItemWidget extends StatelessWidget {
  final TodoModel item;
  final Function(TodoModel) onDelete;
  final Function(TodoModel) onUpdate;

  const TodoItemWidget(
      {super.key,
      required this.item,
      required this.onDelete,
      required this.onUpdate});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSizeR.s10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: AppSizeR.s2,
            blurRadius: AppSizeR.s5,
          ),
        ],
      ),
      child: ListTile(
        title: Text(item.todo),
        trailing: Row(
          mainAxisSize: MainAxisSize.min, // Control trailing widget size
          children: [
            Text("#${item.userId}"),
            IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () => onDelete(item),
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => onUpdate(item),
            ),
          ],
        ),
      ),
    );
  }
}
