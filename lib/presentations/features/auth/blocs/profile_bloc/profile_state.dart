part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.success({required ProfileResponse profile}) =
      _Success;
  const factory ProfileState.errror({required String message}) = _Error;
}
