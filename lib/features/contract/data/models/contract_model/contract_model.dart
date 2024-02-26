import 'package:flutter_tdd/core/constants/app_config.dart';
import 'package:flutter_tdd/core/enums/contract_types.dart';
import 'package:flutter_tdd/core/enums/date_types.dart';
import 'package:flutter_tdd/core/enums/tenant_visibility.dart';
import 'package:flutter_tdd/core/extensions/price_format.dart';
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
    @JsonKey(name: 'tts_code',defaultValue: "")required String code,
    @JsonKey(name: 'are_desc_fo',defaultValue: "")required String unitName,
    @JsonKey(name: 'parent_desc_ar',defaultValue: "")required String blocName,
    @JsonKey(name: 'cal_type')required DateTypes dateType,
    @JsonKey(name: 'tts_end_date_hj',defaultValue: "")required String dataTimeHj,
    @JsonKey(name: 'tts_end_date_dgr',defaultValue: "")required String dataTimeStamp,
    @JsonKey(name: 'amt_due', defaultValue: "0")required String totalDuePrice,
    @JsonKey(name: 'amt_collect', defaultValue: "0")required String contractCollectPrice,
    @JsonKey(name: 'tts_contract_net_price_alc', defaultValue: "0")required String contractNetPrice,
    @JsonKey(name: 'tts_tot_additional_item_alc', defaultValue: "0")required String contractAdditionalPrice,
    @JsonKey(name: 'tts_insurance', defaultValue: "0")required String contractInsurancePrice,
    @JsonKey(name: 'tts_validity')required TenantVisibility status,
    @JsonKey(name: 'contract_type')required ContractTypes type,
    @JsonKey(name: 'prop_lat',defaultValue: "")required String propLat,
    @JsonKey(name: 'prop_lng',defaultValue: "")required String propLng,
    @JsonKey(name: 'prop_img')String? propImg,
    @JsonKey(name: 'prop_city',defaultValue: "")required String propCity,
    @JsonKey(name: 'prop_region',defaultValue: "")required String propRegion,
  }) = _ContractModel;

  factory ContractModel.fromJson(Map<String, dynamic> json) => _$ContractModelFromJson(json);

  String get unitImage => AppConfig.instance.imageBaseUrl + (propImg ?? "content/f084d073fe5d0dc7de6ef6772e69760e94cb1c3e.jpg");

  String get date {
    if (dateType == DateTypes.hj) {
      return dataTimeHj;
    }
    return dataTimeStamp.formatTimeStampDate();
  }


  // صافي العقد
  String get netPrice => contractNetPrice.priceFormat;

  // التامين
  String get insurancePrice => contractInsurancePrice.priceFormat;

  //المحصل
  String get collectPrice => contractCollectPrice.priceFormat;

  //الاضافي
  String get additionalPrice => contractAdditionalPrice.priceFormat;

  String get duePrice => totalDuePrice.priceFormat;

}
