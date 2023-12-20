import 'package:code_test/core/services/local/local_code_test_model_service.dart';
import 'package:code_test/core/services/remote/api_service.dart';
import 'package:code_test/data/model/code_test_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

abstract class CodeTestRepo {
  Stream<List<CodeTestModel>> getAllData();
}

class CodeTestRepoImpl extends CodeTestRepo {
  final ApiService remote = Get.find();
  final LocalCodetTestModelService local =
      Get.find<LocalCodetTestModelService>();

  @override
  Stream<List<CodeTestModel>> getAllData() async* {
    try {
        var response = await remote.getAllPosts();

        if (response.isNotEmpty) {
          await local.deleteAllData();
          await local.saveAllData(response);
          yield (await local.getAllData());
        }
      } on DioException catch (e) {
        throw e.message ?? "";
      } catch (e) {
        throw e.toString();
        
      }
  }
}
