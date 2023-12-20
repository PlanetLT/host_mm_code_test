// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'code_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CodeTestModel _$CodeTestModelFromJson(Map<String, dynamic> json) {
  return _CodeTestModel.fromJson(json);
}

/// @nodoc
mixin _$CodeTestModel {
  @JsonKey(name: "name")
  @HiveField(1)
  NameModel get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeTestModelCopyWith<CodeTestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeTestModelCopyWith<$Res> {
  factory $CodeTestModelCopyWith(
          CodeTestModel value, $Res Function(CodeTestModel) then) =
      _$CodeTestModelCopyWithImpl<$Res, CodeTestModel>;
  @useResult
  $Res call({@JsonKey(name: "name") @HiveField(1) NameModel name});

  $NameModelCopyWith<$Res> get name;
}

/// @nodoc
class _$CodeTestModelCopyWithImpl<$Res, $Val extends CodeTestModel>
    implements $CodeTestModelCopyWith<$Res> {
  _$CodeTestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameModelCopyWith<$Res> get name {
    return $NameModelCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CodeTestModelImplCopyWith<$Res>
    implements $CodeTestModelCopyWith<$Res> {
  factory _$$CodeTestModelImplCopyWith(
          _$CodeTestModelImpl value, $Res Function(_$CodeTestModelImpl) then) =
      __$$CodeTestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "name") @HiveField(1) NameModel name});

  @override
  $NameModelCopyWith<$Res> get name;
}

/// @nodoc
class __$$CodeTestModelImplCopyWithImpl<$Res>
    extends _$CodeTestModelCopyWithImpl<$Res, _$CodeTestModelImpl>
    implements _$$CodeTestModelImplCopyWith<$Res> {
  __$$CodeTestModelImplCopyWithImpl(
      _$CodeTestModelImpl _value, $Res Function(_$CodeTestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CodeTestModelImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$CodeTestModelImpl implements _CodeTestModel {
  const _$CodeTestModelImpl(@JsonKey(name: "name") @HiveField(1) this.name);

  factory _$CodeTestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeTestModelImplFromJson(json);

  @override
  @JsonKey(name: "name")
  @HiveField(1)
  final NameModel name;

  @override
  String toString() {
    return 'CodeTestModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeTestModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeTestModelImplCopyWith<_$CodeTestModelImpl> get copyWith =>
      __$$CodeTestModelImplCopyWithImpl<_$CodeTestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeTestModelImplToJson(
      this,
    );
  }
}

abstract class _CodeTestModel implements CodeTestModel {
  const factory _CodeTestModel(
          @JsonKey(name: "name") @HiveField(1) final NameModel name) =
      _$CodeTestModelImpl;

  factory _CodeTestModel.fromJson(Map<String, dynamic> json) =
      _$CodeTestModelImpl.fromJson;

  @override
  @JsonKey(name: "name")
  @HiveField(1)
  NameModel get name;
  @override
  @JsonKey(ignore: true)
  _$$CodeTestModelImplCopyWith<_$CodeTestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
