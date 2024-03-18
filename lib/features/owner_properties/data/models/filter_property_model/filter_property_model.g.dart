// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_property_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterPropertyModelImpl _$$FilterPropertyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterPropertyModelImpl(
      types: (json['types'] as List<dynamic>)
          .map((e) => TypesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FilterPropertyModelImplToJson(
        _$FilterPropertyModelImpl instance) =>
    <String, dynamic>{
      'types': instance.types.map((e) => e.toJson()).toList(),
      'categories': instance.categories.map((e) => e.toJson()).toList(),
    };

_$TypesModelImpl _$$TypesModelImplFromJson(Map<String, dynamic> json) =>
    _$TypesModelImpl(
      name: json['name_ar'] as String,
      enName: json['name_en'] as String,
      code: json['myo_code'] as String,
      selected: json['selected'] as bool?,
    );

Map<String, dynamic> _$$TypesModelImplToJson(_$TypesModelImpl instance) =>
    <String, dynamic>{
      'name_ar': instance.name,
      'name_en': instance.enName,
      'myo_code': instance.code,
      'selected': instance.selected,
    };

_$CategoriesModelImpl _$$CategoriesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesModelImpl(
      name: json['name_ar'] as String,
      enName: json['name_en'] as String,
      code: json['ree_code'] as String,
      selected: json['selected'] as bool?,
    );

Map<String, dynamic> _$$CategoriesModelImplToJson(
        _$CategoriesModelImpl instance) =>
    <String, dynamic>{
      'name_ar': instance.name,
      'name_en': instance.enName,
      'ree_code': instance.code,
      'selected': instance.selected,
    };
