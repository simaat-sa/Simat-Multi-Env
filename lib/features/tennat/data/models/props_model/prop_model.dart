import 'package:freezed_annotation/freezed_annotation.dart';

part 'prop_model.freezed.dart';

part 'prop_model.g.dart';

@freezed
@immutable
class PropModel with _$PropModel {
  const PropModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PropModel({
    @JsonKey(name: 'prop_id') required String propId,
    @JsonKey(name: 'are_id') required String areId,
    @JsonKey(name: 'are_code') required String areCode,
    @JsonKey(name: 'are_are_id') required String areAreId,
    @JsonKey(name: 'are_desc_fo') required String areDescFo,
    @JsonKey(name: 'are_owner') required String areOwner,
    @JsonKey(name: 'are_intermediate') required String areIntermediate,
    @JsonKey(name: 'prop_img') required String propImg,
    @JsonKey(name: 'prop_lat') required String propLat,
    @JsonKey(name: 'prop_lng') required String propLng,
    @JsonKey(name: 'prop_address') required String propAddress,
    @JsonKey(name: 'monthly') required String monthly,
    @JsonKey(name: 'is_rentable') required String isRentable,
    @JsonKey(name: 'create_by') required String createBy,
    @JsonKey(name: 'update_by') required String updateBy,
    @JsonKey(name: 'dt_created') required String dtCreated,
    @JsonKey(name: 'prop_units') required String propUnits,
    @JsonKey(name: 'water_meter') required String waterMeter,
    @JsonKey(name: 'guard_name') required String guardName,
    @JsonKey(name: 'acl_status_code') required String aclStatusCode,
    @JsonKey(name: 'contact_mobile') required String contactMobile,
    @JsonKey(name: 'contact_phone') required String? contactPhone,
    @JsonKey(name: 'prop_cost') required String propCost,
    @JsonKey(name: 'unit_no')  String? unitNo,
    @JsonKey(name: 'floor_no') required String floorNo,
    @JsonKey(name: 'prop_district') required String propDistrict,
    @JsonKey(name: 'prop_city') required String propCity,
    @JsonKey(name: 'prop_region') required String propRegion,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'build_area') required String buildArea,
    @JsonKey(name: 'land_area') required String landArea,
    @JsonKey(name: 'contact_name') required String contactName,
    @JsonKey(name: 'collector') required String collector,
    @JsonKey(name: 'rooms')  String? rooms,
    @JsonKey(name: 'prop_floors') required String propFloors,
    @JsonKey(name: 'building_number') required String buildingNumber,
    @JsonKey(name: 'contract_type') required String contractType,
    @JsonKey(name: 'cal_type') required String calType,
    @JsonKey(name: 'street_name') required String streetName,
    @JsonKey(name: 'prop_number') String? propNumber,
  }) = _PropModel;

  factory PropModel.fromJson(Map<String, dynamic> json) => _$PropModelFromJson(json);


  String get propName => "$areDescFo - $propCity";

  String get unitName => areDescFo;

}
