import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/app/app_preferences.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final AppPreferences appPreferences;
  AppBloc({required this.appPreferences}) : super(const _Initial()) {
    on<AppEvent>((event, emit) async {
      await event.map(
        logged: (value) async {
          var token = await appPreferences.getUserToken();
          if (token.isNotEmpty) {
            emit(const AppState.home());
          } else {
            emit(const AppState.auth());
          }
        },
      );
    });
  }
}
