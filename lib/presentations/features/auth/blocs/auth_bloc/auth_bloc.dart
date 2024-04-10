import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/app/app_preferences.dart';
import 'package:maids_task/app/depndency_injection.dart';
import 'package:maids_task/domain/usecases/auth_usecases/refresh_usecase.dart';

import '../../../../../domain/models/auth_models/requests/login/login_request.dart';
import '../../../../../domain/models/auth_models/requests/refresh_token/refresh_request.dart';
import '../../../../../domain/models/auth_models/responses/login_response/login_response.dart';
import '../../../../../domain/usecases/auth_usecases/login_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUsecase loginUsecase;
  final RefreshUsecase refreshUsecase;
  AuthBloc({required this.loginUsecase, required this.refreshUsecase})
      : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (value) async {
          emit(const AuthState.loading());
          final failureOrSuccess = await loginUsecase.execute(value.request);
          await failureOrSuccess.when((success) async {
            await instance<AppPreferences>().setUserToken(success.token);
            emit(AuthState.success(response: success));
          }, (error) {
            emit(AuthState.error(message: error.message));
          });
        },
        rerfreshToken: (value) async {
          emit(const AuthState.loading());
          final failureOrSuccess = await refreshUsecase.execute(value.request);
          failureOrSuccess.when((success) {
            emit(AuthState.success(response: success));
          }, (error) {
            emit(AuthState.error(message: error.message));
          });
        },
      );
    });
  }
}
