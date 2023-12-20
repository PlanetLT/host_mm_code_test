// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NameModelImplAdapter extends TypeAdapter<_$NameModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$NameModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$NameModelImpl(
      fields[1] == null ? '' : fields[1] as String,
      fields[2] == null ? '' : fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$NameModelImpl obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.common)
      ..writeByte(2)
      ..write(obj.official);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NameModelImpl _$$NameModelImplFromJson(Map<String, dynamic> json) =>
    _$NameModelImpl(
      json['common'] as String,
      json['official'] as String,
    );

Map<String, dynamic> _$$NameModelImplToJson(_$NameModelImpl instance) =>
    <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
    };
