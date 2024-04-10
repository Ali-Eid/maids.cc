import 'package:maids_task/data/newtwok/failure_model/failure.dart';
import 'package:maids_task/domain/models/auth_models/responses/profile_response/profile_response.dart';
import 'package:maids_task/domain/usecases/base_usecases/base_usecase.dart';
import 'package:multiple_result/src/result.dart';

import '../../repository/repository.dart';

class ProfileUsecase extends BaseUseCaseEmptyInput<ProfileResponse> {
  final Repository repository;

  ProfileUsecase({required this.repository});

  @override
  Future<Result<ProfileResponse, FailureModel>> execute() async {
    return await repository.profile();
  }
}
