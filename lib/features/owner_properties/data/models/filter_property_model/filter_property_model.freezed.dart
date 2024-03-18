// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_property_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterPropertyModel _$FilterPropertyModelFromJson(Map<String, dynamic> json) {
  return _FilterPropertyModel.fromJson(json);
}

/// @nodoc
mixin _$FilterPropertyModel {
  List<TypesModel> get types => throw _privateConstructorUsedError;
  set types(List<TypesModel> value) => throw _privateConstructorUsedError;
  List<CategoriesModel> get categories => throw _privateConstructorUsedError;
  set categories(List<CategoriesModel> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterPropertyModelCopyWith<FilterPropertyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterPropertyModelCopyWith<$Res> {
  factory $FilterPropertyModelCopyWith(
          FilterPropertyModel value, $Res Function(FilterPropertyModel) then) =
      _$FilterPropertyModelCopyWithImpl<$Res, FilterPropertyModel>;
  @useResult
  $Res call({List<TypesModel> types, List<CategoriesModel> categories});
}

/// @nodoc
class _$FilterPropertyModelCopyWithImpl<$Res, $Val extends FilterPropertyModel>
    implements $FilterPropertyModelCopyWith<$Res> {
  _$FilterPropertyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypesModel>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterPropertyModelImplCopyWith<$Res>
    implements $FilterPropertyModelCopyWith<$Res> {
  factory _$$FilterPropertyModelImplCopyWith(_$FilterPropertyModelImpl value,
          $Res Function(_$FilterPropertyModelImpl) then) =
      __$$FilterPropertyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TypesModel> types, List<CategoriesModel> categories});
}

/// @nodoc
class __$$FilterPropertyModelImplCopyWithImpl<$Res>
    extends _$FilterPropertyModelCopyWithImpl<$Res, _$FilterPropertyModelImpl>
    implements _$$FilterPropertyModelImplCopyWith<$Res> {
  __$$FilterPropertyModelImplCopyWithImpl(_$FilterPropertyModelImpl _value,
      $Res Function(_$FilterPropertyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? types = null,
    Object? categories = null,
  }) {
    return _then(_$FilterPropertyModelImpl(
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TypesModel>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FilterPropertyModelImpl extends _FilterPropertyModel {
  _$FilterPropertyModelImpl({required this.types, required this.categories})
      : super._();

  factory _$FilterPropertyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterPropertyModelImplFromJson(json);

  @override
  List<TypesModel> types;
  @override
  List<CategoriesModel> categories;

  @override
  String toString() {
    return 'FilterPropertyModel(types: $types, categories: $categories)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterPropertyModelImplCopyWith<_$FilterPropertyModelImpl> get copyWith =>
      __$$FilterPropertyModelImplCopyWithImpl<_$FilterPropertyModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterPropertyModelImplToJson(
      this,
    );
  }
}

abstract class _FilterPropertyModel extends FilterPropertyModel {
  factory _FilterPropertyModel(
      {required List<TypesModel> types,
      required List<CategoriesModel> categories}) = _$FilterPropertyModelImpl;
  _FilterPropertyModel._() : super._();

  factory _FilterPropertyModel.fromJson(Map<String, dynamic> json) =
      _$FilterPropertyModelImpl.fromJson;

  @override
  List<TypesModel> get types;
  set types(List<TypesModel> value);
  @override
  List<CategoriesModel> get categories;
  set categories(List<CategoriesModel> value);
  @override
  @JsonKey(ignore: true)
  _$$FilterPropertyModelImplCopyWith<_$FilterPropertyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypesModel _$TypesModelFromJson(Map<String, dynamic> json) {
  return _TypesModel.fromJson(json);
}

/// @nodoc
mixin _$TypesModel {
  @JsonKey(name: "name_ar")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ar")
  set name(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "name_en")
  String get enName => throw _privateConstructorUsedError;
  @JsonKey(name: "name_en")
  set enName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "myo_code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "myo_code")
  set code(String value) => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;
  set selected(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypesModelCopyWith<TypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypesModelCopyWith<$Res> {
  factory $TypesModelCopyWith(
          TypesModel value, $Res Function(TypesModel) then) =
      _$TypesModelCopyWithImpl<$Res, TypesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name_ar") String name,
      @JsonKey(name: "name_en") String enName,
      @JsonKey(name: "myo_code") String code,
      bool? selected});
}

/// @nodoc
class _$TypesModelCopyWithImpl<$Res, $Val extends TypesModel>
    implements $TypesModelCopyWith<$Res> {
  _$TypesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? enName = null,
    Object? code = null,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enName: null == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypesModelImplCopyWith<$Res>
    implements $TypesModelCopyWith<$Res> {
  factory _$$TypesModelImplCopyWith(
          _$TypesModelImpl value, $Res Function(_$TypesModelImpl) then) =
      __$$TypesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name_ar") String name,
      @JsonKey(name: "name_en") String enName,
      @JsonKey(name: "myo_code") String code,
      bool? selected});
}

/// @nodoc
class __$$TypesModelImplCopyWithImpl<$Res>
    extends _$TypesModelCopyWithImpl<$Res, _$TypesModelImpl>
    implements _$$TypesModelImplCopyWith<$Res> {
  __$$TypesModelImplCopyWithImpl(
      _$TypesModelImpl _value, $Res Function(_$TypesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? enName = null,
    Object? code = null,
    Object? selected = freezed,
  }) {
    return _then(_$TypesModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enName: null == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TypesModelImpl extends _TypesModel {
  _$TypesModelImpl(
      {@JsonKey(name: "name_ar") required this.name,
      @JsonKey(name: "name_en") required this.enName,
      @JsonKey(name: "myo_code") required this.code,
      required this.selected})
      : super._();

  factory _$TypesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypesModelImplFromJson(json);

  @override
  @JsonKey(name: "name_ar")
  String name;
  @override
  @JsonKey(name: "name_en")
  String enName;
  @override
  @JsonKey(name: "myo_code")
  String code;
  @override
  bool? selected;

  @override
  String toString() {
    return 'TypesModel(name: $name, enName: $enName, code: $code, selected: $selected)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypesModelImplCopyWith<_$TypesModelImpl> get copyWith =>
      __$$TypesModelImplCopyWithImpl<_$TypesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypesModelImplToJson(
      this,
    );
  }
}

abstract class _TypesModel extends TypesModel {
  factory _TypesModel(
      {@JsonKey(name: "name_ar") required String name,
      @JsonKey(name: "name_en") required String enName,
      @JsonKey(name: "myo_code") required String code,
      required bool? selected}) = _$TypesModelImpl;
  _TypesModel._() : super._();

  factory _TypesModel.fromJson(Map<String, dynamic> json) =
      _$TypesModelImpl.fromJson;

  @override
  @JsonKey(name: "name_ar")
  String get name;
  @JsonKey(name: "name_ar")
  set name(String value);
  @override
  @JsonKey(name: "name_en")
  String get enName;
  @JsonKey(name: "name_en")
  set enName(String value);
  @override
  @JsonKey(name: "myo_code")
  String get code;
  @JsonKey(name: "myo_code")
  set code(String value);
  @override
  bool? get selected;
  set selected(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$TypesModelImplCopyWith<_$TypesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) {
  return _CategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesModel {
  @JsonKey(name: "name_ar")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "name_ar")
  set name(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "name_en")
  String get enName => throw _privateConstructorUsedError;
  @JsonKey(name: "name_en")
  set enName(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "ree_code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "ree_code")
  set code(String value) => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;
  set selected(bool? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesModelCopyWith<CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesModelCopyWith<$Res> {
  factory $CategoriesModelCopyWith(
          CategoriesModel value, $Res Function(CategoriesModel) then) =
      _$CategoriesModelCopyWithImpl<$Res, CategoriesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name_ar") String name,
      @JsonKey(name: "name_en") String enName,
      @JsonKey(name: "ree_code") String code,
      bool? selected});
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res, $Val extends CategoriesModel>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? enName = null,
    Object? code = null,
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enName: null == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesModelImplCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$$CategoriesModelImplCopyWith(_$CategoriesModelImpl value,
          $Res Function(_$CategoriesModelImpl) then) =
      __$$CategoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name_ar") String name,
      @JsonKey(name: "name_en") String enName,
      @JsonKey(name: "ree_code") String code,
      bool? selected});
}

/// @nodoc
class __$$CategoriesModelImplCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res, _$CategoriesModelImpl>
    implements _$$CategoriesModelImplCopyWith<$Res> {
  __$$CategoriesModelImplCopyWithImpl(
      _$CategoriesModelImpl _value, $Res Function(_$CategoriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? enName = null,
    Object? code = null,
    Object? selected = freezed,
  }) {
    return _then(_$CategoriesModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      enName: null == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CategoriesModelImpl extends _CategoriesModel {
  _$CategoriesModelImpl(
      {@JsonKey(name: "name_ar") required this.name,
      @JsonKey(name: "name_en") required this.enName,
      @JsonKey(name: "ree_code") required this.code,
      required this.selected})
      : super._();

  factory _$CategoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesModelImplFromJson(json);

  @override
  @JsonKey(name: "name_ar")
  String name;
  @override
  @JsonKey(name: "name_en")
  String enName;
  @override
  @JsonKey(name: "ree_code")
  String code;
  @override
  bool? selected;

  @override
  String toString() {
    return 'CategoriesModel(name: $name, enName: $enName, code: $code, selected: $selected)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesModelImplCopyWith<_$CategoriesModelImpl> get copyWith =>
      __$$CategoriesModelImplCopyWithImpl<_$CategoriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesModelImplToJson(
      this,
    );
  }
}

abstract class _CategoriesModel extends CategoriesModel {
  factory _CategoriesModel(
      {@JsonKey(name: "name_ar") required String name,
      @JsonKey(name: "name_en") required String enName,
      @JsonKey(name: "ree_code") required String code,
      required bool? selected}) = _$CategoriesModelImpl;
  _CategoriesModel._() : super._();

  factory _CategoriesModel.fromJson(Map<String, dynamic> json) =
      _$CategoriesModelImpl.fromJson;

  @override
  @JsonKey(name: "name_ar")
  String get name;
  @JsonKey(name: "name_ar")
  set name(String value);
  @override
  @JsonKey(name: "name_en")
  String get enName;
  @JsonKey(name: "name_en")
  set enName(String value);
  @override
  @JsonKey(name: "ree_code")
  String get code;
  @JsonKey(name: "ree_code")
  set code(String value);
  @override
  bool? get selected;
  set selected(bool? value);
  @override
  @JsonKey(ignore: true)
  _$$CategoriesModelImplCopyWith<_$CategoriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
