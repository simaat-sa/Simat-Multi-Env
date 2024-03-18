import 'package:flutter_tdd/core/extensions/price_format.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prop_details_model.freezed.dart';
part 'prop_details_model.g.dart';

@freezed
class PropDetailsModel with _$PropDetailsModel{
  const PropDetailsModel._();
  @JsonSerializable(explicitToJson: true)
  factory PropDetailsModel({
    @JsonKey(name: 'prop_occ_rate',defaultValue: "")required String propRate,
    @JsonKey(name: 'prop_child_ava',defaultValue: "")required String propChildAva,
    @JsonKey(name: 'prop_child_occ',defaultValue: "")required String propChildOcc,
    @JsonKey(name: 'prop_child_tot',defaultValue: "")required String propChildTot,
    @JsonKey(name: 'commercial_rented',defaultValue: "")required String commercialRented,
    @JsonKey(name: 'commercial_rented_total',defaultValue: "")required String commercialRentedTotal,
    @JsonKey(name: 'commercial_rented_rate',defaultValue: "")required String commercialRentedRate,
    @JsonKey(name: 'residential_rented',defaultValue: "")required String residentialRented,
    @JsonKey(name: 'residential_rented_total',defaultValue: "")required String residentialRentedTotal,
    @JsonKey(name: 'residential_rented_rate',defaultValue: "")required String residentialRentedRate,
    @JsonKey(name: 'balance',defaultValue: "")required String balance,
    @JsonKey(name: 'amt_payable',defaultValue: "")required String amtPayable,
    @JsonKey(name: 'is_rentable',defaultValue: "")required String isRentable,
    @JsonKey(name: 'amt_due',defaultValue: "")required String amtDue,
    @JsonKey(name: 'amt_collect',defaultValue: "")required String amtCollect,
    @JsonKey(name: 'amt_comm_tot',defaultValue: "")required String amtCommTot,
    @JsonKey(name: 'amt_paid',defaultValue: "")required String amtPaid,
    @JsonKey(name: 'amt_balance',defaultValue: "")required String amtBalance,
    @JsonKey(name: 'amt_insur',defaultValue: "")required String amtInsur,
  }) = _PropDetailsModel;


  factory PropDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PropDetailsModelFromJson(json);

  // مدفوعات
  String get amtPaidPrice => amtPaid.priceFormat;
  // عمولات
  String get amtCommTotPrice => amtCommTot.priceFormat;
  // محصل
  String get amtCollectPrice => amtCollect.priceFormat;
  //الرصيد
  String get amtBalancePrice => amtBalance.priceFormat;
  // مستحق
  String get amtDuePrice => amtDue.priceFormat;
  // مطلوب
  String get amtPayablePrice => amtPayable.priceFormat;
  // تأمينات
  String get amtInsurPrice => amtInsur.priceFormat;
}