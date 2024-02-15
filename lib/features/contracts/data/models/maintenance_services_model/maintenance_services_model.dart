import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance_services_model.freezed.dart';

part 'maintenance_services_model.g.dart';

@freezed
@immutable
class MaintenanceServicesModel with _$MaintenanceServicesModel {
  const MaintenanceServicesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory MaintenanceServicesModel({
    @JsonKey(name: 'list_id') required String id,
    @JsonKey(name: 'is_group') required String isGroup,
    @JsonKey(name: 'list_parent') required String parent,
    @JsonKey(name: 'list_code') required String code,
    @JsonKey(name: 'list_val') required String value,
    @JsonKey(name: 'list_ar') required String ar,
    @JsonKey(name: 'list_en') required String en,
    @JsonKey(name: 'dt_created') required String createdDateTimeStamp,
    @JsonKey(name: 'dt_updated') required String updatedDateTimeStamp,
    @JsonKey(name: 'sequence') required String sequence,
    @JsonKey(name: 'create_by') required String createBy,
    @JsonKey(name: 'update_by') required String updateBy,
    @JsonKey(name: 'sys_pkg') required String sysPkg,
    @JsonKey(name: 'list_uuid') required String uuid,
    required String active,
    required String icon,
  }) = _MaintenanceServicesModel;

  factory MaintenanceServicesModel.fromJson(Map<String, dynamic> json) => _$MaintenanceServicesModelFromJson(json);
}
