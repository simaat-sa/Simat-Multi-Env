// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropModelImpl _$$PropModelImplFromJson(Map<String, dynamic> json) =>
    _$PropModelImpl(
      propId: json['prop_id'] as String? ?? '0',
      areId: json['are_id'] as String? ?? '0',
      areCode: json['are_code'] as String? ?? '0',
      areAreId: json['are_are_id'] as String? ?? '0',
      unitName: json['are_desc_fo'] as String? ?? '',
      blocNameAr: json['parent_desc_ar'] as String? ?? '',
      blocNameEn: json['parent_desc_en'] as String? ?? '',
      propCity: json['prop_city'] as String? ?? '',
      contactName: json['contact_name'] as String? ?? '',
    );

Map<String, dynamic> _$$PropModelImplToJson(_$PropModelImpl instance) =>
    <String, dynamic>{
      'prop_id': instance.propId,
      'are_id': instance.areId,
      'are_code': instance.areCode,
      'are_are_id': instance.areAreId,
      'are_desc_fo': instance.unitName,
      'parent_desc_ar': instance.blocNameAr,
      'parent_desc_en': instance.blocNameEn,
      'prop_city': instance.propCity,
      'contact_name': instance.contactName,
    };
