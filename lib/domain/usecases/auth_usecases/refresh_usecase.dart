import 'package:maids_task/domain/models/auth_models/requests/refresh_token/refresh_request.dart';
import 'package:multiple_result/multiple_result.dart';

import '../../../data/newtwok/failure_model/failure.dart';
import '../../models/auth_models/responses/login_response/login_response.dart';
import '../../repository/repository.dart';
import '../base_usecases/base_usecase.dart';

class RefreshUsecase extends BaseUseCase<RefreshRequest, LoginResponse> {
  final Repository repository;

  RefreshUsecase({required this.repository});

  @override
  Future<Result<LoginResponse, FailureModel>> execute(
      RefreshRequest input) async {
    return await repository.refreshToken(input);
  }
}
