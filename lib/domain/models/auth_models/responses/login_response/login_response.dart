import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    @Default(0) int id,
    @Default("") String username,
    @Default("") String email,
    @Default("") String firstName,
    @Default("") String lastName,
    @Default("") String gender,
    @Default("") String image,
    @Default("") String token,
  }) = _LoginResponse;
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
