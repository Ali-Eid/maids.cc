import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
abstract class ProfileResponse with _$ProfileResponse {
  factory ProfileResponse({
    @Default(0) int id,
    @Default("") String username,
    @Default("") String email,
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String gender,
    @Default("") String image,
  }) = _ProfileResponse;
  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}
