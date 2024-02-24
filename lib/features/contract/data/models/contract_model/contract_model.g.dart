// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractModelImpl _$$ContractModelImplFromJson(Map<String, dynamic> json) => _$ContractModelImpl(
      propId: json['prop_id'] as String? ?? '',
      code: json['tts_code'] as String?,
      unitName: json[''] as String? ?? '',
      dateType: $enumDecode(_$DateTypesEnumMap, json['cal_type']),
      dataTimeHj: json['tts_end_date_hj'] as String? ?? '',
      dataTimeStamp: json['tts_end_date_dgr'] as String? ?? '',
      price: json['amt_due'] as String? ?? '0',
      status: $enumDecode(_$TenantVisibilityEnumMap, json['tts_validity']),
      type: $enumDecode(_$ContractTypesEnumMap, json['contract_type']),
      propLat: json['prop_lat'] as String? ?? '',
      propLng: json['prop_lng'] as String? ?? '',
      propImg: json['prop_img'] as String?,
      propCity: json['prop_city'] as String? ?? '',
      propRegion: json['prop_region'] as String? ?? '',
    );

Map<String, dynamic> _$$ContractModelImplToJson(_$ContractModelImpl instance) => <String, dynamic>{
      'prop_id': instance.propId,
      'tts_code': instance.code,
      '': instance.unitName,
      'cal_type': _$DateTypesEnumMap[instance.dateType]!,
      'tts_end_date_hj': instance.dataTimeHj,
      'tts_end_date_dgr': instance.dataTimeStamp,
      'amt_due': instance.price,
      'tts_validity': _$TenantVisibilityEnumMap[instance.status]!,
      'contract_type': _$ContractTypesEnumMap[instance.type]!,
      'prop_lat': instance.propLat,
      'prop_lng': instance.propLng,
      'prop_img': instance.propImg,
      'prop_city': instance.propCity,
      'prop_region': instance.propRegion,
    };

const _$DateTypesEnumMap = {
  DateTypes.normal: 'cal_gr',
  DateTypes.hj: 'cal_hj',
  DateTypes.non: '',
};

const _$TenantVisibilityEnumMap = {
  TenantVisibility.active: 'active',
  TenantVisibility.inactive: 'inactive',
  TenantVisibility.closed: 'closed',
  TenantVisibility.expired: 'expired',
  TenantVisibility.non: '',
};

const _$ContractTypesEnumMap = {
  ContractTypes.residential: 'residential',
  ContractTypes.commercial: 'commercial',
  ContractTypes.non: '',
};
