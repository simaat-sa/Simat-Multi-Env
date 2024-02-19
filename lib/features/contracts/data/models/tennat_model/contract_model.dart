import 'dart:ui';

import 'package:flutter_tdd/core/enums/contract_status.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_model.freezed.dart';

part 'contract_model.g.dart';

@freezed
class ContractModel with _$ContractModel {
  const ContractModel._();

  @JsonSerializable(explicitToJson: true)
  factory ContractModel({
    @JsonKey(name: 'maint_id',defaultValue: "") required String id,
    @JsonKey(name: 'contact_name', defaultValue: "") required String createdBy,
    @JsonKey(name: 'maint_desc', defaultValue: "") required String desc,
    @JsonKey(name: 'maint_code') required String code,
    @JsonKey(name: 'are_desc_fo', defaultValue: "") required String unitName,
    @JsonKey(name: 'approx_cost', defaultValue: "0") required String approxCost,
    @JsonKey(name: 'actual_cost', defaultValue: "0") required String actualCost,
    @JsonKey(name: 'acl_status_code') required ContractStatus status,
    @JsonKey(name: 'dt_created',defaultValue: "") required String createdDateTimeStamp,
  }) = _ContractModel;

  factory ContractModel.fromJson(Map<String, dynamic> json) => _$ContractModelFromJson(json);

  String get createdDate {
    return createdDateTimeStamp.formatTimeStampDate();
  }

  String get price {
    if (status == ContractStatus.completed) {
      return actualCost;
    }
    return approxCost;
  }

  String get statusName {
    return status.getLocalizedName();
  }

  Color get statusColor {
    return status.getColor();
  }
}
