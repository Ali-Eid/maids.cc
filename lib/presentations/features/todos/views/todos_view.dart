import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/domain/models/todos_models/requests/pagination_request/pagination.dart';
import 'package:maids_task/domain/models/todos_models/responses/todo_model.dart';
import 'package:maids_task/presentations/features/todos/blocs/todo_bloc/todo_bloc.dart';
import 'package:maids_task/presentations/resources/values_manager.dart';

import '../widgets/add_update_todo_widget.dart';
import '../widgets/todo_item_widget.dart';

class TodosView extends StatefulWidget {
  const TodosView({super.key});

  @override
  State<TodosView> createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  late ScrollController controller = ScrollController();
  void _onPagination() {
    final maxScroll = controller.position.maxScrollExtent;
    final currentScroll = controller.offset;

    if (currentScroll >= maxScroll) {
      context.read<TodoBloc>().add(const TodoEvent.getTodosPagination());
    }
  }

  @override
  void initState() {
    controller.addListener(_onPagination);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos Task",
            style: TextStyle(
              fontSize: AppSizeSp.s20, // Adjust font size as desired
              fontWeight: FontWeight.bold, // Make the title bold
              color: Colors.black, // Set the title text color
            )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizeW.s8),
            child: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s12),
                        child: const AddUpdateTodoWidget());
                  },
                );
              },
              icon: const Icon(Icons.add),
            ),
          )
        ],
      ),
      body: BlocConsumer(
        bloc: context.read<TodoBloc>(),
        listener: (context, state) {},
        builder: (context, TodoState state) {
          return state.map(
            loading: (value) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            loaded: (value) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      controller: controller,
                      padding: EdgeInsets.symmetric(
                          vertical: AppSizeH.s12, horizontal: AppSizeW.s10),
                      separatorBuilder: (context, index) {
                        return SizedBox(height: AppSizeH.s12);
                      },
                      itemCount:
                          context.read<TodoBloc>().todosPagination.length,
                      itemBuilder: (context, index) {
                        return TodoItemWidget(
                            item:
                                context.read<TodoBloc>().todosPagination[index],
                            onDelete: (todo) {
                              context
                                  .read<TodoBloc>()
                                  .add(TodoEvent.deleteToodo(todoId: todo.id));
                            },
                            onUpdate: (todo) {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: AppSizeW.s12),
                                      child: AddUpdateTodoWidget(
                                        model: todo,
                                      ));
                                },
                              );
                            });
                      },
                    ),
                  ),
                  value.isLoading
                      ? Padding(
                          padding: EdgeInsets.all(AppSizeW.s8),
                          child: const CircularProgressIndicator(),
                        )
                      : const SizedBox()
                ],
              );
            },
            error: (value) {
              return Center(
                child: Text(value.message),
              );
            },
          );
        },
      ),
    );
  }
}
