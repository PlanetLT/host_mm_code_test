import 'package:code_test/data/model/name_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'code_test_model.freezed.dart';
part 'code_test_model.g.dart';

@freezed
class CodeTestModel with _$CodeTestModel {
  @HiveType(typeId: 0)
  const factory CodeTestModel(
    @JsonKey(name: "name") @HiveField(1) NameModel name,
   
  ) = _CodeTestModel;
  factory CodeTestModel.fromJson(Map<String, dynamic> json) =>
      _$CodeTestModelFromJson(json);
}