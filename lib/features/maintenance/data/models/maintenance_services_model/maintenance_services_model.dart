import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'maintenance_services_model.freezed.dart';

part 'maintenance_services_model.g.dart';

@freezed
@immutable
class MaintenanceServicesModel with _$MaintenanceServicesModel {
  const MaintenanceServicesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory MaintenanceServicesModel({
    @JsonKey(name: 'list_id', defaultValue: "0") required String id,
    @JsonKey(name: 'is_group', defaultValue: "") required String isGroup,
    @JsonKey(name: 'list_parent', defaultValue: "") required String parent,
    @JsonKey(name: 'list_code', defaultValue: "0") required String code,
    @JsonKey(name: 'list_val', defaultValue: "0") required String value,
    @JsonKey(name: 'list_ar', defaultValue: "") required String nameAr,
    @JsonKey(name: 'list_en', defaultValue: "") required String nameEn,
    @JsonKey(name: 'dt_created', defaultValue: "") required String createdDateTimeStamp,
    @JsonKey(name: 'dt_updated', defaultValue: "") required String updatedDateTimeStamp,
    @JsonKey(name: 'sequence', defaultValue: "") required String sequence,
    @JsonKey(name: 'create_by', defaultValue: "") required String createBy,
    @JsonKey(name: 'update_by', defaultValue: "") required String updateBy,
    @JsonKey(name: 'sys_pkg', defaultValue: "") required String sysPkg,
    @JsonKey(name: 'list_uuid', defaultValue: "0") required String uuid,
    required String active,
    required String icon,
  }) = _MaintenanceServicesModel;

  factory MaintenanceServicesModel.fromJson(Map<String, dynamic> json) =>
      _$MaintenanceServicesModelFromJson(json);
  String getLocalizedName() {
    BuildContext context = getIt<GlobalContext>().context();
    var lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    if (lang == 'ar') {
      return nameAr;
    } else {
      return nameEn;
    }
  }
}
