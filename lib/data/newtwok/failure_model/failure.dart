import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentations/resources/strings_manager.dart';
part 'failure.freezed.dart';
part 'failure.g.dart';

@freezed
class FailureModel with _$FailureModel {
  const factory FailureModel({
    @Default('') String message,
    @Default('') String code,
  }) = _FailureModel;

  factory FailureModel.fromJson(Map<String, dynamic> json) =>
      _$FailureModelFromJson(json);
}

Map<String, String> defaultError = {'message': AppStrings().defaultError};
