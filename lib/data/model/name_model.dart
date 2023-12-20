import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'name_model.freezed.dart';
part 'name_model.g.dart';

@freezed
class NameModel with _$NameModel {
  @HiveType(typeId: 1)
  const factory NameModel(
    @JsonKey(name: "common") @HiveField(1, defaultValue: "") String common,
     @JsonKey(name: "official") @HiveField(2, defaultValue: "") String official,
   
  ) = _NameModel;
  factory NameModel.fromJson(Map<String, dynamic> json) =>
      _$NameModelFromJson(json);
}