import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_request.freezed.dart';
part 'update_request.g.dart';

@freezed
abstract class UpdateRequest with _$UpdateRequest {
  factory UpdateRequest({
    required String todo,
    required bool completed,
  }) = _UpdateRequest;
  factory UpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateRequestFromJson(json);
}
