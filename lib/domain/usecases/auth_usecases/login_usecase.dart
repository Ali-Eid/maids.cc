import 'package:multiple_result/src/result.dart';

import '../../../data/newtwok/failure_model/failure.dart';
import '../../models/auth_models/requests/login/login_request.dart';
import '../../models/auth_models/responses/login_response/login_response.dart';
import '../../repository/repository.dart';
import '../base_usecases/base_usecase.dart';

class LoginUsecase extends BaseUseCase<LoginRequest, LoginResponse> {
  final Repository repository;

  LoginUsecase({required this.repository});
  @override
  Future<Result<LoginResponse, FailureModel>> execute(
      LoginRequest input) async {
    return await repository.login(input);
  }
}
