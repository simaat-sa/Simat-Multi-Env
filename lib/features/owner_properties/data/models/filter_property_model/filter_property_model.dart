import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_property_model.freezed.dart';

part 'filter_property_model.g.dart';

@unfreezed
@immutable
class FilterPropertyModel with _$FilterPropertyModel {
   FilterPropertyModel._();

  @JsonSerializable(explicitToJson: true)
   factory FilterPropertyModel({
    required List<TypesModel> types,
    required List<CategoriesModel> categories,
  }) = _FilterPropertyModel;

  factory FilterPropertyModel.fromJson(Map<String, dynamic> json) =>
      _$FilterPropertyModelFromJson(json);
}

@unfreezed
@immutable
class TypesModel with _$TypesModel {
   TypesModel._();

  @JsonSerializable(explicitToJson: true)
   factory TypesModel({
    @JsonKey(name: "name_ar") required String name,
    @JsonKey(name: "name_en") required String enName,
    @JsonKey(name: "myo_code") required String code,
    required bool? selected,
  }) = _TypesModel;

  factory TypesModel.fromJson(Map<String, dynamic> json) =>
      _$TypesModelFromJson(json);
}

@unfreezed
@immutable
class CategoriesModel with _$CategoriesModel {
   CategoriesModel._();

  @JsonSerializable(explicitToJson: true)
   factory CategoriesModel({
    @JsonKey(name: "name_ar") required String name,
    @JsonKey(name: "name_en") required String enName,
    @JsonKey(name: "ree_code") required String code,
    required bool? selected,
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}
