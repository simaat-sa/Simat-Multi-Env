// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notices_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticesModelImpl _$$NoticesModelImplFromJson(Map<String, dynamic> json) =>
    _$NoticesModelImpl(
      alertId: json['alert_id'] as String,
      alertSubject: json['alert_subject'] as String,
      alertBody: json['alert_body'] as String,
      dtCreated: json['dt_created'] as String,
      isRead: $enumDecode(_$NotifyStatusEnumMap, json['is_read']),
    );

Map<String, dynamic> _$$NoticesModelImplToJson(_$NoticesModelImpl instance) =>
    <String, dynamic>{
      'alert_id': instance.alertId,
      'alert_subject': instance.alertSubject,
      'alert_body': instance.alertBody,
      'dt_created': instance.dtCreated,
      'is_read': _$NotifyStatusEnumMap[instance.isRead]!,
    };

const _$NotifyStatusEnumMap = {
  NotifyStatus.read: '1',
  NotifyStatus.unRead: '0',
  NotifyStatus.non: '',
};
