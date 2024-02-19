// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropModelImpl _$$PropModelImplFromJson(Map<String, dynamic> json) =>
    _$PropModelImpl(
      propId: json['prop_id'] as String,
      areId: json['are_id'] as String,
      areCode: json['are_code'] as String,
      areAreId: json['are_are_id'] as String,
      areDescFo: json['are_desc_fo'] as String,
      parentDescAr: json['parent_desc_ar'] as String,
      parentDescEn: json['parent_desc_en'] as String,
      areOwner: json['are_owner'] as String,
      areIntermediate: json['are_intermediate'] as String,
      propImg: json['prop_img'] as String? ?? '',
      propLat: json['prop_lat'] as String,
      propLng: json['prop_lng'] as String,
      propAddress: json['prop_address'] as String,
      monthly: json['monthly'] as String,
      isRentable: json['is_rentable'] as String,
      createBy: json['create_by'] as String,
      updateBy: json['update_by'] as String,
      dtCreated: json['dt_created'] as String,
      propUnits: json['prop_units'] as String,
      waterMeter: json['water_meter'] as String? ?? '',
      guardName: json['guard_name'] as String,
      aclStatusCode: json['acl_status_code'] as String,
      contactMobile: json['contact_mobile'] as String,
      contactPhone: json['contact_phone'] as String?,
      propCost: json['prop_cost'] as String,
      unitNo: json['unit_no'] as String?,
      floorNo: json['floor_no'] as String,
      propDistrict: json['prop_district'] as String,
      propCity: json['prop_city'] as String,
      propRegion: json['prop_region'] as String,
      country: json['country'] as String,
      buildArea: json['build_area'] as String,
      landArea: json['land_area'] as String,
      contactName: json['contact_name'] as String,
      collector: json['collector'] as String,
      rooms: json['rooms'] as String?,
      propFloors: json['prop_floors'] as String,
      buildingNumber: json['building_number'] as String,
      contractType: json['contract_type'] as String,
      calType: json['cal_type'] as String,
      streetName: json['street_name'] as String,
      propNumber: json['prop_number'] as String?,
    );

Map<String, dynamic> _$$PropModelImplToJson(_$PropModelImpl instance) =>
    <String, dynamic>{
      'prop_id': instance.propId,
      'are_id': instance.areId,
      'are_code': instance.areCode,
      'are_are_id': instance.areAreId,
      'are_desc_fo': instance.areDescFo,
      'parent_desc_ar': instance.parentDescAr,
      'parent_desc_en': instance.parentDescEn,
      'are_owner': instance.areOwner,
      'are_intermediate': instance.areIntermediate,
      'prop_img': instance.propImg,
      'prop_lat': instance.propLat,
      'prop_lng': instance.propLng,
      'prop_address': instance.propAddress,
      'monthly': instance.monthly,
      'is_rentable': instance.isRentable,
      'create_by': instance.createBy,
      'update_by': instance.updateBy,
      'dt_created': instance.dtCreated,
      'prop_units': instance.propUnits,
      'water_meter': instance.waterMeter,
      'guard_name': instance.guardName,
      'acl_status_code': instance.aclStatusCode,
      'contact_mobile': instance.contactMobile,
      'contact_phone': instance.contactPhone,
      'prop_cost': instance.propCost,
      'unit_no': instance.unitNo,
      'floor_no': instance.floorNo,
      'prop_district': instance.propDistrict,
      'prop_city': instance.propCity,
      'prop_region': instance.propRegion,
      'country': instance.country,
      'build_area': instance.buildArea,
      'land_area': instance.landArea,
      'contact_name': instance.contactName,
      'collector': instance.collector,
      'rooms': instance.rooms,
      'prop_floors': instance.propFloors,
      'building_number': instance.buildingNumber,
      'contract_type': instance.contractType,
      'cal_type': instance.calType,
      'street_name': instance.streetName,
      'prop_number': instance.propNumber,
    };
