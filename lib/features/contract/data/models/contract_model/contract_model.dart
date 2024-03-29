import 'package:flutter_tdd/core/constants/app_config.dart';
import 'package:flutter_tdd/core/enums/contract_types.dart';
import 'package:flutter_tdd/core/enums/date_types.dart';
import 'package:flutter_tdd/core/enums/prop_details_status.dart';
import 'package:flutter_tdd/core/enums/tenant_visibility.dart';
import 'package:flutter_tdd/core/extensions/price_format.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/models/localized_name_model/localized_name_model.dart';
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
    @JsonKey(name: 'are_id', defaultValue: "0") required String areId,
    @JsonKey(name: 'are_code', defaultValue: "0") required String areCode,
    @JsonKey(name: 'are_are_id', defaultValue: "0") required String areAreId,
    @JsonKey(name: 'are_desc_fo',defaultValue: "")required String unitName,
    @JsonKey(name: 'parent_desc_ar',defaultValue: "")required String blocNameAr,
    @JsonKey(name: 'parent_desc_en',defaultValue: "")required String blocNameEn,
    @JsonKey(name: 'contact_name',defaultValue: "")required String contactName,
    @JsonKey(name: 'cal_type')required DateTypes dateType,
    @JsonKey(name: 'tts_end_date_hj',defaultValue: "")required String dataTimeHj,
    @JsonKey(name: 'tts_end_date_dgr',defaultValue: "")required String dataTimeStamp,
    @JsonKey(name: 'amt_due', defaultValue: "0")required String totalDuePrice,
    @JsonKey(name: 'amt_collect', defaultValue: "0")required String contractCollectPrice,
    @JsonKey(name: 'tts_contract_net_price_alc', defaultValue: "0") required String contractNetPrice,
    @JsonKey(name: 'tts_tot_additional_item_alc', defaultValue: "0") required String contractAdditionalPrice,
    @JsonKey(name: 'tts_insurance', defaultValue: "0") required String contractInsurancePrice,
    @JsonKey(name: 'tts_validity', defaultValue: TenantVisibility.non) required TenantVisibility status,
    @JsonKey(name: 'contract_type') required ContractTypes type,
    @JsonKey(name: 'prop_lat', defaultValue: "") required String propLat,
    @JsonKey(name: 'prop_lng', defaultValue: "") required String propLng,
    @JsonKey(name: 'prop_img') String? propImg,
    @JsonKey(name: 'prop_city', defaultValue: "") required String propCity,
    @JsonKey(name: 'prop_region', defaultValue: "") required String propRegion,
    @JsonKey(name: 'tts_start_date_dgr', defaultValue: "") required String startDt,
    @JsonKey(name: 'acl_status_code') required PropDetailsStatus propDetailsStatus,
    @JsonKey(name: 'amt_balance', defaultValue: "0") required String balance,
    @JsonKey(name: 'amt_payable', defaultValue: "0") required String payablePrice,
  }) = _ContractModel;

  factory ContractModel.fromJson(Map<String, dynamic> json) => _$ContractModelFromJson(json);

  String get unitImage =>
      AppConfig.instance.imageBaseUrl(propImg ?? "content/f084d073fe5d0dc7de6ef6772e69760e94cb1c3e.jpg");

  String get date {
    if(dataTimeStamp=="0" || dateType == DateTypes.hj && dataTimeHj == "0"){
      return "-";
    }
    if (dateType == DateTypes.hj) {
      return dataTimeHj;
    }
    return dataTimeStamp.formatTimeStampDate();
  }


  String get startDate {
    if(startDt == "0"){
      return "-";
    }
    return startDt.formatTimeStampDate();
  }

  // صافي العقد
  String get netPrice => contractNetPrice.priceFormat;

  // التامين
  String get insurancePrice => contractInsurancePrice.priceFormat;

  //المحصل
  String get collectPrice => contractCollectPrice.priceFormat;

  //الاضافي
  String get additionalPrice => contractAdditionalPrice.priceFormat;

  // المطلوب
  String get duePrice => totalDuePrice.priceFormat;

  // الرصيد
  String get amtBalance => balance.priceFormat;
  String get amtPayablePrice => payablePrice.priceFormat;

  String get blockName => LocalizedNameModel.fromStrings(ar: blocNameAr, en: blocNameEn).getLocalizedString;
}
