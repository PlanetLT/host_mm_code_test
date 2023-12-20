
import 'package:code_test/data/model/code_test_model.dart';
import 'package:hive/hive.dart';

abstract class LocalCodetTestModelService {
  Future saveAllData(List<CodeTestModel> codeTestModel);
  Future<List<CodeTestModel>> getAllData();

  Future deleteAllData();

  Stream<List<CodeTestModel>> subscribeAllData();
}

class LocalCodetTestModelServiceImpl implements LocalCodetTestModelService {
  static final LocalCodetTestModelServiceImpl _singleton =
      LocalCodetTestModelServiceImpl._internal();
  LocalCodetTestModelServiceImpl._internal();
  factory LocalCodetTestModelServiceImpl() => _singleton;
  Future<Box<CodeTestModel>> box = Hive.openBox<CodeTestModel>("CodeTestModel");

  List<CodeTestModel> _filterAndSort() {
    var b = Hive.box<CodeTestModel>("CodeTestModel");
    var list = b.values.toList();
    return list;
  }

  @override
  Future deleteAllData() async {
    await (await box).clear();
  }

  @override
  Future<List<CodeTestModel>> getAllData() async {
    return _filterAndSort();
  }

  @override
  Future saveAllData(List<CodeTestModel> codeTestModel) async {
    await (await box).putAll({for (var b in codeTestModel) b.name.common: b});
  }

  @override
  Stream<List<CodeTestModel>> subscribeAllData() async* {
    var tBox = await box;
    yield _filterAndSort();
    yield* tBox.watch().map<List<CodeTestModel>>((event) {
      return _filterAndSort();
    });
  }
}