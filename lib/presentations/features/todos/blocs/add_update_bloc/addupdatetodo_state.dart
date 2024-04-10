part of 'addupdatetodo_bloc.dart';

@freezed
class AddupdatetodoState with _$AddupdatetodoState {
  const factory AddupdatetodoState.initial() = _Initial;
  const factory AddupdatetodoState.loading() = _Loading;
  const factory AddupdatetodoState.successAdded({required TodoModel model}) =
      _SuccessAdded;
  const factory AddupdatetodoState.successUpdated({required TodoModel model}) =
      _SuccessUpdated;
  const factory AddupdatetodoState.error({required String message}) = _Error;
}
