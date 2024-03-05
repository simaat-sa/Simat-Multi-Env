import 'package:flutter_tdd/core/constants/app_config.dart';
import 'package:flutter_tdd/core/enums/contract_types.dart';
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
    // @JsonKey(name: 'are_owner', defaultValue: "") required String areOwner,
    // @JsonKey(name: 'are_intermediate', defaultValue: "") required String areIntermediate,
    @JsonKey(name: 'prop_img') required String? propImg,
    // @JsonKey(name: 'prop_lat', defaultValue: "0") required String propLat,
    // @JsonKey(name: 'prop_lng', defaultValue: "0") required String propLng,
    // @JsonKey(name: 'prop_address', defaultValue: "") required String propAddress,
    // @JsonKey(name: 'monthly', defaultValue: "") required String monthly,
    // @JsonKey(name: 'is_rentable', defaultValue: "") required String isRentable,
    // @JsonKey(name: 'create_by', defaultValue: "") required String createBy,
    // @JsonKey(name: 'update_by', defaultValue: "") required String updateBy,
    // @JsonKey(name: 'dt_created', defaultValue: "") required String dtCreated,
    // @JsonKey(name: 'prop_units', defaultValue: "") required String propUnits,
    // @JsonKey(name: 'water_meter', defaultValue: "") required String waterMeter,
    // @JsonKey(name: 'guard_name', defaultValue: "") required String guardName,
    // @JsonKey(name: 'acl_status_code', defaultValue: "0") required String aclStatusCode,
    // @JsonKey(name: 'contact_mobile', defaultValue: "") required String contactMobile,
    // @JsonKey(name: 'contact_phone') required String? contactPhone,
    @JsonKey(name: 'prop_cost', defaultValue: "") required String propCost,
    // @JsonKey(name: 'unit_no') String? unitNo,
    // @JsonKey(name: 'floor_no', defaultValue: "") required String floorNo,
    // @JsonKey(name: 'prop_district', defaultValue: "") required String propDistrict,
    @JsonKey(name: 'prop_city', defaultValue: "") required String propCity,
    @JsonKey(name: 'prop_region', defaultValue: "") required String propRegion,
    // @JsonKey(name: 'country', defaultValue: "") required String country,
    // @JsonKey(name: 'build_area', defaultValue: "") required String buildArea,
    // @JsonKey(name: 'land_area', defaultValue: "") required String landArea,
    @JsonKey(name: 'contact_name', defaultValue: "") required String contactName,
    @JsonKey(name: 'dt_updated', defaultValue: "") required String date,
    // @JsonKey(name: 'collector', defaultValue: "") required String collector,
    // @JsonKey(name: 'rooms') String? rooms,
    // @JsonKey(name: 'prop_floors', defaultValue: "") required String propFloors,
    // @JsonKey(name: 'building_number', defaultValue: "") required String buildingNumber,
    @JsonKey(name: 'contract_type') required ContractTypes propType,
    // @JsonKey(name: 'cal_type', defaultValue: "") required String calType,
    // @JsonKey(name: 'street_name', defaultValue: "") required String streetName,
    // @JsonKey(name: 'prop_number') String? propNumber,
  }) = _PropModel;

  factory PropModel.fromJson(Map<String, dynamic> json) => _$PropModelFromJson(json);

  String get propTitle => "$blockName - $propCity";

  String get unitFullName => "$blockName - $unitName";

  String get blockName => LocalizedNameModel.fromStrings(ar: blocNameAr, en: blocNameEn).getLocalizedString;

  String get dateUpdatedFormat{
    return date.formatTimeStampDate();
  }

  String get unitImage => AppConfig.instance.imageBaseUrl(propImg ?? "content/f084d073fe5d0dc7de6ef6772e69760e94cb1c3e.jpg");


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
    );
  }
}
