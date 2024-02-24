// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notices_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NoticesModelImpl _$$NoticesModelImplFromJson(Map<String, dynamic> json) => _$NoticesModelImpl(
      alertId: json['alert_id'] as String,
      alertSubject: json['alert_subject'] as String,
      alertBody: json['alert_body'] as String,
      dtCreated: json['dt_created'] as String,
    );

Map<String, dynamic> _$$NoticesModelImplToJson(_$NoticesModelImpl instance) => <String, dynamic>{
      'alert_id': instance.alertId,
      'alert_subject': instance.alertSubject,
      'alert_body': instance.alertBody,
      'dt_created': instance.dtCreated,
    };
