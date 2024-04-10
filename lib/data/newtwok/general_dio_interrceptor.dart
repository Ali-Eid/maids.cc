import 'package:dio/dio.dart';

import '../../app/app_preferences.dart';

class GeneralInterceptor extends Interceptor {
  final AppPreferences appPreferences;

  GeneralInterceptor({required this.appPreferences});

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String token = await appPreferences.getUserToken();
    if (token.isNotEmpty) options.headers["authorization"] = "Bearer $token";
    super.onRequest(options, handler);
  }
}
