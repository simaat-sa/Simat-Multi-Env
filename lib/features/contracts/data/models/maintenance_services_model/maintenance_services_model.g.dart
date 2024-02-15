// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaintenanceServicesModelImpl _$$MaintenanceServicesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MaintenanceServicesModelImpl(
      id: json['list_id'] as String,
      isGroup: json['is_group'] as String,
      parent: json['list_parent'] as String,
      code: json['list_code'] as String,
      value: json['list_val'] as String,
      ar: json['list_ar'] as String,
      en: json['list_en'] as String,
      createdDateTimeStamp: json['dt_created'] as String,
      updatedDateTimeStamp: json['dt_updated'] as String,
      sequence: json['sequence'] as String,
      createBy: json['create_by'] as String,
      updateBy: json['update_by'] as String,
      sysPkg: json['sys_pkg'] as String,
      uuid: json['list_uuid'] as String,
      active: json['active'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$MaintenanceServicesModelImplToJson(
        _$MaintenanceServicesModelImpl instance) =>
    <String, dynamic>{
      'list_id': instance.id,
      'is_group': instance.isGroup,
      'list_parent': instance.parent,
      'list_code': instance.code,
      'list_val': instance.value,
      'list_ar': instance.ar,
      'list_en': instance.en,
      'dt_created': instance.createdDateTimeStamp,
      'dt_updated': instance.updatedDateTimeStamp,
      'sequence': instance.sequence,
      'create_by': instance.createBy,
      'update_by': instance.updateBy,
      'sys_pkg': instance.sysPkg,
      'list_uuid': instance.uuid,
      'active': instance.active,
      'icon': instance.icon,
    };
