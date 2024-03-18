// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prop_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropDetailsModelImpl _$$PropDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropDetailsModelImpl(
      propRate: json['prop_occ_rate'] as String? ?? '',
      propChildAva: json['prop_child_ava'] as String? ?? '',
      propChildOcc: json['prop_child_occ'] as String? ?? '',
      propChildTot: json['prop_child_tot'] as String? ?? '',
      commercialRented: json['commercial_rented'] as String? ?? '',
      commercialRentedTotal: json['commercial_rented_total'] as String? ?? '',
      commercialRentedRate: json['commercial_rented_rate'] as String? ?? '',
      residentialRented: json['residential_rented'] as String? ?? '',
      residentialRentedTotal: json['residential_rented_total'] as String? ?? '',
      residentialRentedRate: json['residential_rented_rate'] as String? ?? '',
      balance: json['balance'] as String? ?? '',
      amtPayable: json['amt_payable'] as String? ?? '',
      isRentable: json['is_rentable'] as String? ?? '',
      amtDue: json['amt_due'] as String? ?? '',
      amtCollect: json['amt_collect'] as String? ?? '',
      amtCommTot: json['amt_comm_tot'] as String? ?? '',
      amtPaid: json['amt_paid'] as String? ?? '',
      amtBalance: json['amt_balance'] as String? ?? '',
      amtInsur: json['amt_insur'] as String? ?? '',
    );

Map<String, dynamic> _$$PropDetailsModelImplToJson(
        _$PropDetailsModelImpl instance) =>
    <String, dynamic>{
      'prop_occ_rate': instance.propRate,
      'prop_child_ava': instance.propChildAva,
      'prop_child_occ': instance.propChildOcc,
      'prop_child_tot': instance.propChildTot,
      'commercial_rented': instance.commercialRented,
      'commercial_rented_total': instance.commercialRentedTotal,
      'commercial_rented_rate': instance.commercialRentedRate,
      'residential_rented': instance.residentialRented,
      'residential_rented_total': instance.residentialRentedTotal,
      'residential_rented_rate': instance.residentialRentedRate,
      'balance': instance.balance,
      'amt_payable': instance.amtPayable,
      'is_rentable': instance.isRentable,
      'amt_due': instance.amtDue,
      'amt_collect': instance.amtCollect,
      'amt_comm_tot': instance.amtCommTot,
      'amt_paid': instance.amtPaid,
      'amt_balance': instance.amtBalance,
      'amt_insur': instance.amtInsur,
    };
