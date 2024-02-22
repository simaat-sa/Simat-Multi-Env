import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notices_model.freezed.dart';
part 'notices_model.g.dart';

@freezed
class NoticesModel with _$NoticesModel{
  const NoticesModel._();
  @JsonSerializable(explicitToJson: true)
  factory NoticesModel({
  @JsonKey(name: 'alert_id') required String alertId,
  @JsonKey(name: 'alert_subject') required String alertSubject,
  @JsonKey(name: 'alert_body') required String alertBody,
  @JsonKey(name: 'dt_created') required String dtCreated,
  }) = _NoticesModel;


  factory NoticesModel.fromJson(Map<String, dynamic> json) =>
      _$NoticesModelFromJson(json);


  String get date {
    return dtCreated.formatTimeStampDate();
  }
}