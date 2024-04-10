import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_request.freezed.dart';
part 'create_request.g.dart';

@freezed
abstract class CreateRequest with _$CreateRequest {
  factory CreateRequest(
      {required String todo,
      required bool completed,
      required int userId}) = _CreateRequest;
  factory CreateRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateRequestFromJson(json);
}
