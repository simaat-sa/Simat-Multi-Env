// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractModelImpl _$$ContractModelImplFromJson(Map<String, dynamic> json) =>
    _$ContractModelImpl(
      propId: json['prop_id'] as String? ?? '',
      code: json['tts_code'] as String? ?? '',
      areId: json['are_id'] as String? ?? '0',
      areCode: json['are_code'] as String? ?? '0',
      areAreId: json['are_are_id'] as String? ?? '0',
      unitName: json['are_desc_fo'] as String? ?? '',
      blocNameAr: json['parent_desc_ar'] as String? ?? '',
      blocNameEn: json['parent_desc_en'] as String? ?? '',
      contactName: json['contact_name'] as String? ?? '',
      dateType: $enumDecode(_$DateTypesEnumMap, json['cal_type']),
      dataTimeHj: json['tts_end_date_hj'] as String? ?? '',
      dataTimeStamp: json['tts_end_date_dgr'] as String? ?? '',
      totalDuePrice: json['amt_due'] as String? ?? '0',
      contractCollectPrice: json['amt_collect'] as String? ?? '0',
      contractNetPrice: json['tts_contract_net_price_alc'] as String? ?? '0',
      contractAdditionalPrice:
          json['tts_tot_additional_item_alc'] as String? ?? '0',
      contractInsurancePrice: json['tts_insurance'] as String? ?? '0',
      status: $enumDecodeNullable(
              _$TenantVisibilityEnumMap, json['tts_validity']) ??
          TenantVisibility.non,
      type: $enumDecode(_$ContractTypesEnumMap, json['contract_type']),
      propLat: json['prop_lat'] as String? ?? '',
      propLng: json['prop_lng'] as String? ?? '',
      propImg: json['prop_img'] as String?,
      propCity: json['prop_city'] as String? ?? '',
      propRegion: json['prop_region'] as String? ?? '',
      startDt: json['tts_start_date_dgr'] as String? ?? '',
      propDetailsStatus:
          $enumDecode(_$PropDetailsStatusEnumMap, json['acl_status_code']),
    );

Map<String, dynamic> _$$ContractModelImplToJson(_$ContractModelImpl instance) =>
    <String, dynamic>{
      'prop_id': instance.propId,
      'tts_code': instance.code,
      'are_id': instance.areId,
      'are_code': instance.areCode,
      'are_are_id': instance.areAreId,
      'are_desc_fo': instance.unitName,
      'parent_desc_ar': instance.blocNameAr,
      'parent_desc_en': instance.blocNameEn,
      'contact_name': instance.contactName,
      'cal_type': _$DateTypesEnumMap[instance.dateType]!,
      'tts_end_date_hj': instance.dataTimeHj,
      'tts_end_date_dgr': instance.dataTimeStamp,
      'amt_due': instance.totalDuePrice,
      'amt_collect': instance.contractCollectPrice,
      'tts_contract_net_price_alc': instance.contractNetPrice,
      'tts_tot_additional_item_alc': instance.contractAdditionalPrice,
      'tts_insurance': instance.contractInsurancePrice,
      'tts_validity': _$TenantVisibilityEnumMap[instance.status]!,
      'contract_type': _$ContractTypesEnumMap[instance.type]!,
      'prop_lat': instance.propLat,
      'prop_lng': instance.propLng,
      'prop_img': instance.propImg,
      'prop_city': instance.propCity,
      'prop_region': instance.propRegion,
      'tts_start_date_dgr': instance.startDt,
      'acl_status_code':
          _$PropDetailsStatusEnumMap[instance.propDetailsStatus]!,
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

const _$PropDetailsStatusEnumMap = {
  PropDetailsStatus.vacant: '41920',
  PropDetailsStatus.rented: '41930',
  PropDetailsStatus.reserved: '41940',
  PropDetailsStatus.non: '0',
};
