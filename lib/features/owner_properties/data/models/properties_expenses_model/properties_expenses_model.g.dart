// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties_expenses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertiesExpensesModelImpl _$$PropertiesExpensesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertiesExpensesModelImpl(
      expId: json['exp_id'] as String? ?? '',
      areId: json['are_id'] as String? ?? '',
      areAreId: json['are_are_id'] as String? ?? '',
      expensesTypeAr: json['tmt_ar'] as String? ?? '',
      expensesTypeEn: json['tmt_en'] as String? ?? '',
      totalAmount: json['amt_tot'] as String? ?? '',
      actualStatusCode: json['acl_status_code'] as String? ?? '',
      createdDate: json['dt_created'] as String? ?? '',
      area: json['are_desc_fo'] as String? ?? '',
      areaEn: json['are_desc_en'] as String? ?? '',
    );

Map<String, dynamic> _$$PropertiesExpensesModelImplToJson(
        _$PropertiesExpensesModelImpl instance) =>
    <String, dynamic>{
      'exp_id': instance.expId,
      'are_id': instance.areId,
      'are_are_id': instance.areAreId,
      'tmt_ar': instance.expensesTypeAr,
      'tmt_en': instance.expensesTypeEn,
      'amt_tot': instance.totalAmount,
      'acl_status_code': instance.actualStatusCode,
      'dt_created': instance.createdDate,
      'are_desc_fo': instance.area,
      'are_desc_en': instance.areaEn,
    };
