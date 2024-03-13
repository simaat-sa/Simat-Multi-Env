import 'package:flutter_tdd/core/constants/app_config.dart';
import 'package:flutter_tdd/core/enums/contract_types.dart';
import 'package:flutter_tdd/core/extensions/price_format.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/models/localized_name_model/localized_name_model.dart';
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prop_model.freezed.dart';
part 'prop_model.g.dart';

@freezed
@immutable
class PropModel with _$PropModel {
  const PropModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PropModel({
    @JsonKey(name: 'prop_id', defaultValue: "0") required String propId,
    @JsonKey(name: 'are_id', defaultValue: "0") required String areId,
    @JsonKey(name: 'are_code', defaultValue: "0") required String areCode,
    @JsonKey(name: 'are_are_id', defaultValue: "0") required String areAreId,
    @JsonKey(name: 'are_desc_fo', defaultValue: "") required String unitName,
    @JsonKey(name: 'parent_desc_ar', defaultValue: "") required String blocNameAr,
    @JsonKey(name: 'parent_desc_en', defaultValue: "") required String blocNameEn,
    @JsonKey(name: 'acl_status_code', defaultValue: "") required String statusCode,
    @JsonKey(name: 'prop_img') required String? propImg,
    @JsonKey(name: 'prop_cost', defaultValue: "") required String propCost,
    @JsonKey(name: 'prop_city', defaultValue: "") required String propCity,
    @JsonKey(name: 'prop_region', defaultValue: "") required String propRegion,
    @JsonKey(name: 'contact_name', defaultValue: "") required String contactName,
    @JsonKey(name: 'dt_updated', defaultValue: "") required String date,
    @JsonKey(name: 'contract_type') required ContractTypes propType,
    @JsonKey(name: 'amt_collect', defaultValue: "0")required String contractCollectPrice,
    @JsonKey(name: 'amt_due', defaultValue: "0")required String totalDuePrice,
    @JsonKey(name: 'prop_child_tot', defaultValue: "0")required String propChildTot,
    @JsonKey(name: 'prop_child_occ', defaultValue: "0")required String propChildOcc,
  }) = _PropModel;

  factory PropModel.fromJson(Map<String, dynamic> json) => _$PropModelFromJson(json);

  String get propTitle => "$blockName - $propCity";

  String get unitFullName => "$blockName - $unitName";

  String get blockName => LocalizedNameModel.fromStrings(ar: blocNameAr, en: blocNameEn).getLocalizedString;

  String get dateUpdatedFormat{
    return date.formatTimeStampDate();
  }

  String get unitImage => AppConfig.instance.imageBaseUrl(propImg ?? "content/f084d073fe5d0dc7de6ef6772e69760e94cb1c3e.jpg");


  //المحصل
  String get collectPrice => contractCollectPrice.priceFormat;

  String get duePrice => totalDuePrice.priceFormat;


  String get rentUnits => "$propChildOcc/$propChildTot";


  String get rentUnitsPercent => "${((double.parse(propChildOcc)/double.parse(propChildTot))*100).toStringAsFixed(0)}%";



  factory PropModel.fromContract(ContractModel contractModel) {
    return PropModel(
      propId: contractModel.propId,
      areId: contractModel.areId,
      areCode: contractModel.areCode,
      areAreId: contractModel.areAreId,
      unitName: contractModel.unitName,
      blocNameAr: contractModel.blocNameAr,
      blocNameEn: contractModel.blocNameEn,
      propCity: contractModel.propCity,
      contactName: contractModel.contactName,
      propImg: contractModel.propImg ?? '',
      statusCode: contractModel.code,
      propRegion: contractModel.propRegion,
      propCost: contractModel.netPrice,
      date: contractModel.date,
      propType: contractModel.type,
      contractCollectPrice: contractModel.collectPrice,
      totalDuePrice: contractModel.duePrice,
      propChildTot: '0',
      propChildOcc: '0',
    );
  }
}
