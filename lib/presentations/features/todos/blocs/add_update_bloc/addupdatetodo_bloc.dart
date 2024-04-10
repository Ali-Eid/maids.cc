import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/domain/models/todos_models/responses/todo_model.dart';

import '../../../../../domain/models/todos_models/requests/create_request/create_request.dart';
import '../../../../../domain/models/todos_models/requests/update_request/update_request.dart';
import '../../../../../domain/usecases/todo_usecases/todos_usecases.dart';

part 'addupdatetodo_event.dart';
part 'addupdatetodo_state.dart';
part 'addupdatetodo_bloc.freezed.dart';

class AddupdatetodoBloc extends Bloc<AddupdatetodoEvent, AddupdatetodoState> {
  final AddTodoUsecase addTodoUsecase;
  final UpdateTodoUsecase updateTodoUsecase;
  AddupdatetodoBloc(
      {required this.addTodoUsecase, required this.updateTodoUsecase})
      : super(const _Initial()) {
    on<AddupdatetodoEvent>((event, emit) async {
      await event.map(
        updateTodo: (value) async {
          emit(const AddupdatetodoState.loading());
          final failureOrAdded = await updateTodoUsecase
              .execute((id: value.todoId, updateRequest: value.updateRequest));
          failureOrAdded.when((success) {
            emit(AddupdatetodoState.successUpdated(model: success));
          }, (error) {
            emit(AddupdatetodoState.error(message: error.message));
          });
        },
        addTodo: (value) async {
          emit(const AddupdatetodoState.loading());
          final failureOrAdded =
              await addTodoUsecase.execute(value.createRequest);
          failureOrAdded.when((success) {
            emit(AddupdatetodoState.successAdded(model: success));
          }, (error) {
            emit(AddupdatetodoState.error(message: error.message));
          });
        },
      );
    });
  }
}
