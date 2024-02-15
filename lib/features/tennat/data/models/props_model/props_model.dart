import 'package:freezed_annotation/freezed_annotation.dart';

part 'props_model.freezed.dart';

part 'props_model.g.dart';

@freezed
@immutable
class PropsModel with _$PropsModel {
  const PropsModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PropsModel({
    @JsonKey(name: 'prop_id') required String propId,
    @JsonKey(name: 'are_id') required String areId,
    @JsonKey(name: 'are_code') required String areCode,
    @JsonKey(name: 'are_are_id') required String areAreId,
    @JsonKey(name: 'parent_code') required String parentCode,
    @JsonKey(name: 'are_desc_fo') required String areDescFo,
    @JsonKey(name: 'are_desc_en') required String areDescEn,
    @JsonKey(name: 'parent_desc_ar') required String parentDescAr,
    @JsonKey(name: 'parent_desc_en') required String parentDescEn,
    @JsonKey(name: 'are_owner') required String areOwner,
    @JsonKey(name: 'are_intermediate') required String areIntermediate,
    @JsonKey(name: 'are_agent') required String areAgent,
    @JsonKey(name: 'atr_id') required String atrId,
    @JsonKey(name: 'lease_area') required String leaseArea,
    @JsonKey(name: 'ioe_code') required String ioeCode,
    @JsonKey(name: 'myo_code') required String myoCode,
    @JsonKey(name: 'prop_level') required String propLevel,
    @JsonKey(name: 'prop_sub') required String propSub,
    @JsonKey(name: 'prop_child_tot') required String propChildTot,
    @JsonKey(name: 'prop_child_ava') required String propChildAva,
    @JsonKey(name: 'prop_child_occ') required String propChildOcc,
    @JsonKey(name: 'prop_occ_rate') required String propOccRate,
    @JsonKey(name: 'ree_code') required String reeCode,
    @JsonKey(name: 'prop_img') required String propImg,
    @JsonKey(name: 'prop_lat') required String propLat,
    @JsonKey(name: 'prop_lng') required String propLng,
    @JsonKey(name: 'prop_coord') required String propCoord,
    @JsonKey(name: 'prop_coord_det') required String propCoordDet,
    @JsonKey(name: 'amt_tot') required String amtTot,
    @JsonKey(name: 'amt_collect') required String amtCollect,
    @JsonKey(name: 'amt_due') required String amtDue,
    @JsonKey(name: 'amt_balance') required String amtBalance,
    @JsonKey(name: 'amt_payable') required String amtPayable,
    @JsonKey(name: 'amt_paid') required String amtPaid,
    @JsonKey(name: 'amt_comm') required String amtComm,
    @JsonKey(name: 'amt_expense') required String amtExpense,
    @JsonKey(name: 'amt_comm_tot') required String amtCommTot,
    @JsonKey(name: 'amt_insur') required String amtInsur,
    @JsonKey(name: 'dt_updated') required String dtUpdated,
    @JsonKey(name: 'rel_update') required String relUpdate,
    @JsonKey(name: 'prop_address') required String propAddress,
    @JsonKey(name: 'monthly') required String monthly,
    @JsonKey(name: 'is_rentable') required String isRentable,
    @JsonKey(name: 'draft') required String draft,
    @JsonKey(name: 'create_by') required String createBy,
    @JsonKey(name: 'update_by') required String updateBy,
    @JsonKey(name: 'dt_created') required String dtCreated,
    @JsonKey(name: 'prop_units') required String propUnits,
    @JsonKey(name: 'deed_no') required String deedNo,
    @JsonKey(name: 'deed_issue') required String deedIssue,
    @JsonKey(name: 'deed_issue_hj') required String deedIssueHj,
    @JsonKey(name: 'elec_meter') required String elecMeter,
    @JsonKey(name: 'gas_meter') required String gasMeter,
    @JsonKey(name: 'water_meter') required String waterMeter,
    @JsonKey(name: 'guard_name') required String guardName,
    @JsonKey(name: 'guard_id') required String guardId,
    @JsonKey(name: 'guard_mobile') required String guardMobile,
    @JsonKey(name: 'prop_adv') required String propAdv,
    @JsonKey(name: 'acl_status_code') required String aclStatusCode,
    @JsonKey(name: 'tts_start_date_dgr') required String ttsStartDateDgr,
    @JsonKey(name: 'tts_end_date_dgr') required String ttsEndDateDgr,
    @JsonKey(name: 'contact_mobile') required String contactMobile,
    @JsonKey(name: 'contact_phone') required String contactPhone,
    @JsonKey(name: 'fin_situation') required String finSituation,
    @JsonKey(name: 'client_cost') required String clientCost,
    @JsonKey(name: 'prop_cost') required String propCost,
    @JsonKey(name: 'prop_income') required String propIncome,
    @JsonKey(name: 'prop_debts') required String propDebts,
    @JsonKey(name: 'prop_tax') required String propTax,
    @JsonKey(name: 'prop_insur') required String propInsur,
    @JsonKey(name: 'prop_expense') required String propExpense,
    @JsonKey(name: 'due_comm') required String dueComm,
    @JsonKey(name: 'pct_comm') required String pctComm,
    @JsonKey(name: 'fxd_comm') required String fxdComm,
    @JsonKey(name: 'unit_no') required String unitNo,
    @JsonKey(name: 'floor_no') required String floorNo,
    @JsonKey(name: 'prop_att') required String propAtt,
    @JsonKey(name: 'res_uid') required String resUid,
    @JsonKey(name: 'prop_district') required String propDistrict,
    @JsonKey(name: 'prop_city') required String propCity,
    @JsonKey(name: 'prop_region') required String propRegion,
    @JsonKey(name: 'country') required String country,
    @JsonKey(name: 'are_desc_full') required String areDescFull,
    @JsonKey(name: 'are_en_full') required String areEnFull,
    @JsonKey(name: 'uuid') required String uuid,
    @JsonKey(name: 'px_selling') required String pxSelling,
    @JsonKey(name: 'build_area') required String buildArea,
    @JsonKey(name: 'land_area') required String landArea,
    @JsonKey(name: 'prop_note') required String propNote,
    @JsonKey(name: 'contact_name') required String contactName,
    @JsonKey(name: 'is_asset') required String isAsset,
    @JsonKey(name: 'ree_desc_fo') required String reeDescFo,
    @JsonKey(name: 'ree_desc_lo') required String reeDescLo,
    @JsonKey(name: 'is_vacancy') required String isVacancy,
    @JsonKey(name: 'branch_id') required String branchId,
    @JsonKey(name: 'branch_cost') required String branchCost,
    @JsonKey(name: 'prop_borders') required String propBorders,
    @JsonKey(name: 'qitea') required String qitea,
    @JsonKey(name: 'scheme') required String scheme,
    @JsonKey(name: 'collector') required String collector,
    @JsonKey(name: 'rooms') required String rooms,
    @JsonKey(name: 'ejar_prop_id') required String ejarPropId,
    @JsonKey(name: 'prop_floors') required String propFloors,
    @JsonKey(name: 'prop_usage') required String propUsage,
    @JsonKey(name: 'deed_type') required String deedType,
    @JsonKey(name: 'deed_name') required String deedName,
    @JsonKey(name: 'building_number') required String buildingNumber,
    @JsonKey(name: 'contract_type') required String contractType,
    @JsonKey(name: 'building_postal_code') required String buildingPostalCode,
    @JsonKey(name: 'cal_type') required String calType,
    @JsonKey(name: 'street_name') required String streetName,
    @JsonKey(name: 'additional_number') required String additionalNumber,
    @JsonKey(name: 'issue_place') required String issuePlace,
    @JsonKey(name: 'issued_by') required String issuedBy,
    @JsonKey(name: 'prop_number') required String propNumber,
    @JsonKey(name: 'ejar_ownership_number') required String ejarOwnershipNumber,
    @JsonKey(name: 'contract_type_view') required String contractTypeView,
  }) = _PropsModel;

  factory PropsModel.fromJson(Map<String, dynamic> json) => _$PropsModelFromJson(json);
}
