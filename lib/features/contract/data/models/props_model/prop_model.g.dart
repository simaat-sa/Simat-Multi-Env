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
      typeAr: json['myo_ar'] as String? ?? '',
      typeEn: json['myo_en'] as String? ?? '',
      statusCode: json['acl_status_code'] as String? ?? '',
      propImg: json['prop_img'] as String?,
      propCost: json['prop_cost'] as String? ?? '',
      propCity: json['prop_city'] as String? ?? '',
      propRegion: json['prop_region'] as String? ?? '',
      contactName: json['contact_name'] as String? ?? '',
      date: json['dt_updated'] as String? ?? '',
      contractType: $enumDecode(_$ContractTypesEnumMap, json['contract_type']),
      contractCollectPrice: json['amt_collect'] as String? ?? '0',
      totalDuePrice: json['amt_due'] as String? ?? '0',
      propChildTot: json['prop_child_tot'] as String? ?? '0',
      propChildOcc: json['prop_child_occ'] as String? ?? '0',
      propAddress: json['prop_address'] as String? ?? '',
      payablePrice: json['amt_payable'] as String? ?? '',
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
      'myo_ar': instance.typeAr,
      'myo_en': instance.typeEn,
      'acl_status_code': instance.statusCode,
      'prop_img': instance.propImg,
      'prop_cost': instance.propCost,
      'prop_city': instance.propCity,
      'prop_region': instance.propRegion,
      'contact_name': instance.contactName,
      'dt_updated': instance.date,
      'contract_type': _$ContractTypesEnumMap[instance.contractType]!,
      'amt_collect': instance.contractCollectPrice,
      'amt_due': instance.totalDuePrice,
      'prop_child_tot': instance.propChildTot,
      'prop_child_occ': instance.propChildOcc,
      'prop_address': instance.propAddress,
      'amt_payable': instance.payablePrice,
    };

const _$ContractTypesEnumMap = {
  ContractTypes.residential: 'residential',
  ContractTypes.commercial: 'commercial',
  ContractTypes.non: '',
};
