import 'package:dio/dio.dart';
import 'package:maids_task/domain/models/auth_models/requests/refresh_token/refresh_request.dart';
import 'package:maids_task/domain/models/auth_models/responses/profile_response/profile_response.dart';
import 'package:maids_task/domain/models/todos_models/requests/create_request/create_request.dart';
import 'package:maids_task/domain/models/todos_models/requests/update_request/update_request.dart';
import 'package:maids_task/domain/models/todos_models/responses/todo_model.dart';
import 'package:retrofit/retrofit.dart';
import '../../app/constants.dart';
import '../../domain/models/auth_models/requests/login/login_request.dart';
import '../../domain/models/auth_models/responses/login_response/login_response.dart';
import 'end_points.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

//dart run build_runner build --delete-conflicting-outputs

  //Handle endpoints

  //---------Auth--------------------
  @POST(EndPoints.authEndPoint)
  Future<HttpResponse<LoginResponse>> login(@Body() LoginRequest request);

  @GET(EndPoints.profileEndPoint)
  Future<HttpResponse<ProfileResponse>> profile();

  @POST(EndPoints.refreshEndPoint)
  Future<HttpResponse<LoginResponse>> refreshToken(
      @Body() RefreshRequest request);
  //-----------------------------------

  //---------Todos--------------------

  @GET(EndPoints.todosEndPoint)
  Future<HttpResponse<TodosModel>> todos({
    @Query("skip") required int skip,
    @Query("limit") required int limit,
  });
  @GET(EndPoints.singleTodoEndPoint)
  Future<HttpResponse<TodoModel>> singleTodo({
    @Path('id') required int id,
  });
  @GET(EndPoints.randomTodoEndPoint)
  Future<HttpResponse<TodoModel>> randomTodo();

  @GET(EndPoints.todosByUserIdEndPoint)
  Future<HttpResponse<TodosModel>> todosByUserIdEndPoint({
    @Path('id') required int id,
    @Query("skip") required int skip,
    @Query("limit") required int limit,
  });

  @POST(EndPoints.addTodo)
  Future<HttpResponse<TodoModel>> addTodo(@Body() CreateRequest request);

  @PUT(EndPoints.updateTodo)
  Future<HttpResponse<TodoModel>> updateTodo({
    @Path('id') required int id,
    @Body() required UpdateRequest request,
  });

  @DELETE(EndPoints.deleteTodo)
  Future<HttpResponse<TodoModel>> deleteTodo({
    @Path('id') required int id,
  });

  //-----------------------------------
}
