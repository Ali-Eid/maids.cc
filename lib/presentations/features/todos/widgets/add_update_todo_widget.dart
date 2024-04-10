import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:maids_task/domain/models/todos_models/requests/create_request/create_request.dart';
import 'package:maids_task/domain/models/todos_models/requests/update_request/update_request.dart';
import 'package:maids_task/domain/models/todos_models/responses/todo_model.dart';
import 'package:maids_task/presentations/features/auth/blocs/profile_bloc/profile_bloc.dart';
import 'package:maids_task/presentations/features/todos/blocs/add_update_bloc/addupdatetodo_bloc.dart';
import 'package:maids_task/presentations/features/todos/blocs/todo_bloc/todo_bloc.dart';
import '../../../../app/depndency_injection.dart';
import '../../../resources/values_manager.dart';

class AddUpdateTodoWidget extends StatefulWidget {
  final TodoModel? model;
  const AddUpdateTodoWidget({super.key, this.model});

  @override
  State<AddUpdateTodoWidget> createState() => _AddUpdateTodoWidgetState();
}

class _AddUpdateTodoWidgetState extends State<AddUpdateTodoWidget> {
  final contentController = TextEditingController();

  late AddupdatetodoBloc addupdatetodoBloc;
  bool? completed = false;
  @override
  void initState() {
    addupdatetodoBloc = instance<AddupdatetodoBloc>();
    if (widget.model != null) {
      contentController.text = widget.model?.todo ?? "";
      completed = widget.model?.completed ?? false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: AppSizeH.s15),
        Text(widget.model != null ? "Update Todo " : "Add Todo ",
            style: TextStyle(
              fontSize: AppSizeSp.s20, // Adjust font size as desired
              fontWeight: FontWeight.bold, // Make the title bold
              color: Colors.black, // Set the title text color
            )),
        SizedBox(height: AppSizeH.s30),
        Row(
          children: [
            Text(
              "Mark as Completed:",
              style: TextStyle(
                fontSize: AppSizeSp.s16,
                color: Colors.black54,
              ),
            ),
            Checkbox(
              value: completed,
              onChanged: (value) {
                setState(() {
                  completed = value;
                });
              },
            ),
          ],
        ),
        SizedBox(height: AppSizeH.s10),
        TextField(
          controller: contentController,
          maxLines: 4,
          minLines: 4,
          decoration: InputDecoration(
            labelText: "Content",
            border: const OutlineInputBorder(),
            alignLabelWithHint: true,
            labelStyle: TextStyle(
              fontSize: AppSizeSp.s16,
              color: Colors.black54,
            ),
          ),
          style: TextStyle(
            fontSize: AppSizeSp.s16,
            color: Colors.black,
          ),
        ),
        SizedBox(height: AppSizeH.s30),
        BlocConsumer(
          bloc: addupdatetodoBloc,
          listener: (context, AddupdatetodoState state) {
            state.mapOrNull(
              successAdded: (value) {
                context
                    .read<TodoBloc>()
                    .add(TodoEvent.addTodo(model: value.model));
                Fluttertoast.showToast(
                    msg: "Added successfully", backgroundColor: Colors.green);
                context.pop();
              },
              successUpdated: (value) {
                context.read<TodoBloc>().add(TodoEvent.updateTodo(
                    todoId: widget.model?.id ?? 0, model: value.model));
                Fluttertoast.showToast(
                    msg: "Updated successfully", backgroundColor: Colors.green);
                context.pop();
              },
            );
          },
          builder: (context, AddupdatetodoState state) {
            return state.maybeMap(
              loading: (value) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizeW.s12),
                  child: const CircularProgressIndicator(),
                );
              },
              orElse: () {
                return ElevatedButton(
                  onPressed: widget.model != null
                      ? () {
                          addupdatetodoBloc.add(AddupdatetodoEvent.updateTodo(
                              todoId: widget.model?.id ?? 0,
                              updateRequest: UpdateRequest(
                                  todo: contentController.text,
                                  completed: completed ?? false)));
                        }
                      : () {
                          addupdatetodoBloc.add(AddupdatetodoEvent.addTodo(
                              createRequest: CreateRequest(
                                  todo: contentController.text,
                                  completed: completed ?? false,
                                  userId: context
                                          .read<ProfileBloc>()
                                          .profileData
                                          ?.id ??
                                      1)));
                        },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        Theme.of(context).colorScheme.primary, // Set text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          AppSizeR.s10), // Rounded corners
                    ),
                  ),
                  child:
                      Text(widget.model != null ? "Update Todo " : "Add Todo"),
                );
              },
            );
          },
        ),
        SizedBox(height: AppSizeH.s30),
      ],
    );
  }
}
