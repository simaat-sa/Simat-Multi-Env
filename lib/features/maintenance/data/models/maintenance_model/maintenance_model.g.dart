// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaintenanceModelImpl _$$MaintenanceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MaintenanceModelImpl(
      id: json['maint_id'] as String? ?? '',
      createdBy: json['contact_name'] as String? ?? '',
      desc: json['maint_desc'] as String? ?? '',
      code: json['maint_code'] as String,
      unitName: json['are_desc_fo'] as String? ?? '',
      blockName: json['parent_desc_ar'] as String? ?? '',
      approxCost: json['approx_cost'] as String? ?? '0',
      actualCost: json['actual_cost'] as String? ?? '0',
      status: $enumDecodeNullable(
              _$ContractStatusEnumMap, json['acl_status_code']) ??
          ContractStatus.non,
      createdDateTimeStamp: json['dt_created'] as String? ?? '',
    );

Map<String, dynamic> _$$MaintenanceModelImplToJson(
        _$MaintenanceModelImpl instance) =>
    <String, dynamic>{
      'maint_id': instance.id,
      'contact_name': instance.createdBy,
      'maint_desc': instance.desc,
      'maint_code': instance.code,
      'are_desc_fo': instance.unitName,
      'parent_desc_ar': instance.blockName,
      'approx_cost': instance.approxCost,
      'actual_cost': instance.actualCost,
      'acl_status_code': _$ContractStatusEnumMap[instance.status]!,
      'dt_created': instance.createdDateTimeStamp,
    };

const _$ContractStatusEnumMap = {
  ContractStatus.newCode: '37710',
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
