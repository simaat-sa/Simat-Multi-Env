import 'package:flutter_tdd/core/enums/tenant_visibility.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';

part 'payment_model.g.dart';

@unfreezed
class PaymentModel with _$PaymentModel {
  const PaymentModel._();

  @JsonSerializable(explicitToJson: true)
  factory PaymentModel({
    @JsonKey(name: "tmt_uid", defaultValue: "") required String tmtUid,
    @JsonKey(name: "tmt_id", defaultValue: "") required String tmtId,
    @JsonKey(name: "tmt_seq", defaultValue: "") required String tmtSeq,
    @JsonKey(name: "srv_cat", defaultValue: "") required String srvCat,
    @JsonKey(name: "yr_seq", defaultValue: "") required String yrSeq,
    @JsonKey(name: "are_id", defaultValue: "") required String areId,
    @JsonKey(name: "are_are_id", defaultValue: "") required String areAreId,
    @JsonKey(name: "are_owner", defaultValue: "") required String areOwner,
    @JsonKey(name: "atr_id", defaultValue: "") required String atrId,
    @JsonKey(name: "myo_code", defaultValue: "") required String myoCode,
    @JsonKey(name: "are_status", defaultValue: "") required String areStatus,
    @JsonKey(name: "tts_id", defaultValue: "") required String ttsId,
    @JsonKey(name: "tts_tts_id", defaultValue: "") required String ttsTtsId,
    @JsonKey(name: "tts_code", defaultValue: "") required String ttsCode,
    @JsonKey(name: "tts_status", defaultValue: "") required String ttsStatus,
    @JsonKey(name: "skip_calc", defaultValue: "") required String skipCalc,
    @JsonKey(name: "dt_to", defaultValue: "") required String dtTo,
    @JsonKey(name: "dt_from", defaultValue: "") required String dtFrom,
    @JsonKey(name: "day_tot", defaultValue: "") required String dayTot,
    @JsonKey(name: "dt_due_hj", defaultValue: "") required String dtDueHj,
    @JsonKey(name: "dt_due_day", defaultValue: "") required String dtDueDay,
    @JsonKey(name: "due_aging_group", defaultValue: "") required String dueAgingGroup,
    @JsonKey(name: "view_due", defaultValue: "") required String viewDue,
    @JsonKey(name: "is_due", defaultValue: "") required String isDue,
    @JsonKey(name: "dt_due", defaultValue: "") required String dtDue,
    @JsonKey(name: "days_due", defaultValue: "") required String daysDue,
    @JsonKey(name: "dt_issue", defaultValue: "") required String dtIssue,
    @JsonKey(name: "mo_due", defaultValue: "") required String moDue,
    @JsonKey(name: "qtr_due", defaultValue: "") required String qtrDue,
    @JsonKey(name: "yr_due", defaultValue: "") required String yrDue,
    @JsonKey(name: "srv_id", defaultValue: "") required String srvId,
    @JsonKey(name: "post_account", defaultValue: "") required String postAccount,
    @JsonKey(name: "post_acc_code", defaultValue: "") required String postAccCode,
    @JsonKey(name: "dr_acc_code", defaultValue: "") required String drAccCode,
    @JsonKey(name: "post_tax_code", defaultValue: "") required String postTaxCode,
    @JsonKey(name: "dr_tax_code", defaultValue: "") required String drTaxCode,
    @JsonKey(name: "post_comm_acc", defaultValue: "") required String postCommAcc,
    @JsonKey(name: "post_comm_tax", defaultValue: "") required String postCommTax,
    @JsonKey(name: "tmt_ar", defaultValue: "") required String tmtAr,
    @JsonKey(name: "tmt_en", defaultValue: "") required String tmtEn,
    @JsonKey(name: "tmt_desc", defaultValue: "") required String tmtDesc,
    @JsonKey(name: "pct_tax", defaultValue: "") required String pctTax,
    @JsonKey(name: "amt_st", defaultValue: "") required String amtSt,
    @JsonKey(name: "amt_disc", defaultValue: "") required String amtDisc,
    @JsonKey(name: "amt_untax", defaultValue: "") required String amtUntax,
    @JsonKey(name: "amt_tax", defaultValue: "") required String amtTax,
    @JsonKey(name: "amt_tot", defaultValue: "") required String amtTot,
    @JsonKey(name: "amt_collect", defaultValue: "") required String amtCollect,
    @JsonKey(name: "amt_due", defaultValue: "") required String amtDue,
    @JsonKey(name: "amt_due_later", defaultValue: "") required String amtDueLater,
    @JsonKey(name: "amt_balance", defaultValue: "") required String amtBalance,
    @JsonKey(name: "amt_payable", defaultValue: "") required String amtPayable,
    @JsonKey(name: "inc_comm", defaultValue: "") required String incComm,
    @JsonKey(name: "due_comm", defaultValue: "") required String dueComm,
    @JsonKey(name: "pct_comm", defaultValue: "") required String pctComm,
    @JsonKey(name: "amt_comm", defaultValue: "") required String amtComm,
    @JsonKey(name: "pct_comm_tax", defaultValue: "") required String pctCommTax,
    @JsonKey(name: "amt_comm_tax", defaultValue: "") required String amtCommTax,
    @JsonKey(name: "amt_comm_tot", defaultValue: "") required String amtCommTot,
    @JsonKey(name: "dt_updated", defaultValue: "") required String dtUpdated,
    @JsonKey(name: "rel_update", defaultValue: "") required String relUpdate,
    @JsonKey(name: "create_by", defaultValue: "") required String createBy,
    @JsonKey(name: "update_by", defaultValue: "") required String updateBy,
    @JsonKey(name: "dt_created", defaultValue: "") required String dtCreated,
    @JsonKey(name: "entry_type", defaultValue: "") required String entryType,
    @JsonKey(name: "tts_validity") required TenantVisibility status,
    @JsonKey(name: "cal_type", defaultValue: "") required String calType,
    @JsonKey(name: "day_cost", defaultValue: "") required String dayCost,
    @JsonKey(name: "due_aging", defaultValue: "") required String dueAging,
    @JsonKey(name: "ign_einv", defaultValue: "") required String ignEinv,
    @JsonKey(name: "ign_due", defaultValue: "") required String ignDue,
    @JsonKey(name: "evac_id", defaultValue: "") required String evacId,
    @JsonKey(name: "inc_vat", defaultValue: "") required String incVat,
    bool? selected,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) => _$PaymentModelFromJson(json);

  String get duePrice => amtDue;
}
