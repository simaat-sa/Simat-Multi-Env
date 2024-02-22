import 'package:flutter_tdd/core/constants/app_config.dart';
import 'package:flutter_tdd/core/enums/contract_types.dart';
import 'package:flutter_tdd/core/enums/date_types.dart';
import 'package:flutter_tdd/core/enums/tenant_visibility.dart';
import 'package:flutter_tdd/core/extensions/date_format.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_model.freezed.dart';

part 'contract_model.g.dart';

@freezed
class ContractModel with _$ContractModel {
  const ContractModel._();

  @JsonSerializable(explicitToJson: true)
  factory ContractModel({
    @JsonKey(name: 'prop_id',defaultValue: "")required String propId,
    @JsonKey(name: 'tts_code') String? code,
    @JsonKey(name: '',defaultValue: "")required String unitName,
    @JsonKey(name: 'cal_type')required DateTypes dateType,
    @JsonKey(name: 'tts_end_date_hj',defaultValue: "")required String dataTimeHj,
    @JsonKey(name: 'tts_end_date_dgr',defaultValue: "")required String dataTimeStamp,
    @JsonKey(name: 'amt_due', defaultValue: "0")required String price,
    @JsonKey(name: 'tts_validity')required TenantVisibility status,
    @JsonKey(name: 'contract_type')required ContractTypes type,
    @JsonKey(name: 'prop_lat',defaultValue: "")required String propLat,
    @JsonKey(name: 'prop_lng',defaultValue: "")required String propLng,
    @JsonKey(name: 'prop_img')String? propImg,
    @JsonKey(name: 'prop_city',defaultValue: "")required String propCity,
    @JsonKey(name: 'prop_region',defaultValue: "")required String propRegion,
  }) = _ContractModel;

  factory ContractModel.fromJson(Map<String, dynamic> json) => _$ContractModelFromJson(json);

  String get unitImage => AppConfig.instance.baseUrl + (propImg??"");

  String get date {
    if (dateType == DateTypes.hj) {
      return dataTimeHj;
    }
    return dataTimeStamp.formatTimeStampDate();
  }
}
