// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contract_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContractModelImpl _$$ContractModelImplFromJson(Map<String, dynamic> json) =>
    _$ContractModelImpl(
      id: json['maint_id'] as String,
      createdBy: json['contact_name'] as String? ?? '',
      desc: json['maint_desc'] as String? ?? '',
      code: json['maint_code'] as String,
      unitName: json['are_desc_fo'] as String? ?? '',
      approxCost: json['approx_cost'] as String? ?? '0',
      actualCost: json['actual_cost'] as String? ?? '0',
      status: $enumDecode(_$ContractStatusEnumMap, json['acl_status_code']),
      createdDateTimeStamp: json['dt_created'] as String,
    );

Map<String, dynamic> _$$ContractModelImplToJson(_$ContractModelImpl instance) =>
    <String, dynamic>{
      'maint_id': instance.id,
      'contact_name': instance.createdBy,
      'maint_desc': instance.desc,
      'maint_code': instance.code,
      'are_desc_fo': instance.unitName,
      'approx_cost': instance.approxCost,
      'actual_cost': instance.actualCost,
      'acl_status_code': _$ContractStatusEnumMap[instance.status]!,
      'dt_created': instance.createdDateTimeStamp,
    };

const _$ContractStatusEnumMap = {
  ContractStatus.canceled: '37790',
  ContractStatus.paused: '37780',
  ContractStatus.posted: '37770',
  ContractStatus.completed: '37760',
  ContractStatus.implemented: '37750',
  ContractStatus.rejectedByTheOwner: '37732',
  ContractStatus.attribution: '37731',
  ContractStatus.owner: '37730',
  ContractStatus.rejectedByTheSupervisor: '37722',
  ContractStatus.supervisorApproved: '37721',
  ContractStatus.applicationApproval: '37720',
  ContractStatus.supervisorIdentifications: '37715',
  ContractStatus.non: '0',
};
