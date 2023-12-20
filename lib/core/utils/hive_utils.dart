
import 'package:code_test/data/model/code_test_model.dart';
import 'package:code_test/data/model/name_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveUtils {
  static Future registerHive() async {
    await Hive.initFlutter();
    _register<CodeTestModel>(0, CodeTestModelImplAdapter());
    _register<NameModel>(1, NameModelImplAdapter());
  }
}

void _register<T>(int typeId, TypeAdapter<T> adapter) {
  if (!Hive.isAdapterRegistered(typeId)) {
    Hive.registerAdapter<T>(adapter);
  }
}