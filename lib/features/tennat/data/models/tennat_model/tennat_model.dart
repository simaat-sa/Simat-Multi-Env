import 'package:flutter_tdd/core/constants/app_config.dart';
import 'package:flutter_tdd/core/enums/contract_types.dart';
import 'package:flutter_tdd/core/enums/date_types.dart';
import 'package:flutter_tdd/core/enums/tenant_visibility.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tennat_model.freezed.dart';

part 'tennat_model.g.dart';

@freezed
class TenantModel with _$TenantModel {
  const TenantModel._();

  @JsonSerializable(explicitToJson: true)
  factory TenantModel({
    @JsonKey(name: 'tts_id',defaultValue: "")required String id,
    @JsonKey(name: 'prop_id',defaultValue: "")required String propId,
    @JsonKey(name: 'tts_code') String? code,
    @JsonKey(name: 'are_desc_fo',defaultValue: "")required String unitName,
    @JsonKey(name: 'cal_type')required DateTypes dateType,
    @JsonKey(name: 'tts_end_date_hj',defaultValue: "")required String expireDataTimeHj,
    @JsonKey(name: 'tts_end_date_dgr',defaultValue: "")required String expireDataTimeStamp,
    @JsonKey(name: 'amt_due', defaultValue: "0")required String price,
    @JsonKey(name: 'tts_amt', defaultValue: "0")required String priceWithoutTax,
    @JsonKey(name: 'tts_validity')required TenantVisibility status,
    @JsonKey(name: 'contract_type')required ContractTypes type,
    @JsonKey(name: 'prop_lat',defaultValue: "")required String propLat,
    @JsonKey(name: 'prop_lng',defaultValue: "")required String propLng,
    @JsonKey(name: 'prop_img')String? propImg,
    @JsonKey(name: 'prop_city',defaultValue: "")required String propCity,
    @JsonKey(name: 'prop_region',defaultValue: "")required String propRegion,
  }) = _TenantModel;

  factory TenantModel.fromJson(Map<String, dynamic> json) => _$TenantModelFromJson(json);

  String get unitImage => AppConfig.instance.baseUrl + (propImg??"");

  String get dueDate {
    if (dateType == DateTypes.hj) {
      return expireDataTimeHj;
    }
    return expireDataTimeStamp.formatTimeStampDate();
  }

  String get expireDate {
    if (dateType == DateTypes.hj) {
      return expireDataTimeHj;
    }
    return expireDataTimeStamp.formatTimeStampDate();
  }

}
