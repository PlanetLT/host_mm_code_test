// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code_test_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CodeTestModelImplAdapter extends TypeAdapter<_$CodeTestModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$CodeTestModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CodeTestModelImpl(
      fields[1] as NameModel,
    );
  }

  @override
  void write(BinaryWriter writer, _$CodeTestModelImpl obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CodeTestModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CodeTestModelImpl _$$CodeTestModelImplFromJson(Map<String, dynamic> json) =>
    _$CodeTestModelImpl(
      NameModel.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CodeTestModelImplToJson(_$CodeTestModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
