import 'package:code_test/data/model/code_test_model.dart';
import 'package:dio/dio.dart' hide Response;
import 'package:retrofit/retrofit.dart' as retrofit;
import 'package:dio/dio.dart';

part 'api_service.g.dart';

@retrofit.RestApi()
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @retrofit.GET("all")
  Future<List<CodeTestModel>> getAllPosts();

}