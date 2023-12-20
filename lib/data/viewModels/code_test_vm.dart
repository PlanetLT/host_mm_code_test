
import 'dart:async';
import 'package:code_test/core/helper/state.dart';
import 'package:code_test/data/model/code_test_model.dart';
import 'package:code_test/data/repositories/code_test_repo.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
class CodeTestVM{
  static final CodeTestVM _singleton = CodeTestVM._internal();
  factory CodeTestVM() => _singleton;
  CodeTestVM._internal(){
     postStream = _postStateController.stream;
  }


final CodeTestRepo _postRepo = Get.find();


final StreamController<MyState<List<CodeTestModel>>> _postStateController =
      StreamController<MyState<List<CodeTestModel>>>.broadcast();
late Stream<MyState<List<CodeTestModel>>> postStream;
  StreamSubscription? _postSubscription;

  void getAllPost()async{
      await _postSubscription?.cancel();

      _postSubscription=_postRepo.getAllData()
      .handleError((e)=>_postStateController.sink.addError(MyState.failed(e is DioException ? e.message : e)))
      .listen((getAllPostResponse)=>_postStateController.sink.add(MyState.success(getAllPostResponse)));
  }




}