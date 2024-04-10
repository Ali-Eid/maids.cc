part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required LoginRequest request}) = _Login;
  const factory AuthEvent.rerfreshToken({required RefreshRequest request}) =
      _Refresh;
}
