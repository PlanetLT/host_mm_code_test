import 'dart:async';

import 'package:code_test/core/const/config.dart';
import 'package:code_test/core/log/log_interceptor.dart';
import 'package:code_test/core/services/local/local_code_test_model_service.dart';
import 'package:code_test/core/services/remote/api_service.dart';
import 'package:code_test/data/model/code_test_model.dart';
import 'package:code_test/data/repositories/code_test_repo.dart';
import 'package:code_test/data/viewModels/code_test_vm.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';


Future initInjection() async {
  await _initOpenBox();

  _injectRemoteService();
  _injectLocalService();
  _injectRepository();
  _injectViewModels();
}

Future _initOpenBox() async {

  return Future.wait([
    Hive.openBox<CodeTestModel>("CodeTestModel"),
  ]);
}


void _injectNotification() {

}

void _injectRemoteService() {
  final options = BaseOptions(
      baseUrl: Config.host,
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 10000),
      contentType: "application/json",
      validateStatus: (status) {
        return true;
      },
      receiveDataWhenStatusError: true);
  var dio = Dio(options)
    ..interceptors
        .addAll([CURLInterceptor()]);
  Get.put<ApiService>(ApiService(dio));
}

void _injectLocalService() {
  Get.put<LocalCodetTestModelService>(LocalCodetTestModelServiceImpl());
  
}

void _injectRepository() {
  Get.put<CodeTestRepo>(CodeTestRepoImpl());
 
}

void _injectViewModels() {
  Get.put(CodeTestVM());
 
}