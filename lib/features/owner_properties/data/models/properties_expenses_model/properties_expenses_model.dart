import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'properties_expenses_model.freezed.dart';

part 'properties_expenses_model.g.dart';

@freezed
@immutable
class PropertiesExpensesModel with _$PropertiesExpensesModel {
  const PropertiesExpensesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory PropertiesExpensesModel({
    @JsonKey(name: "exp_id", defaultValue: "") required String expId,
    @JsonKey(name: "are_id", defaultValue: "") required String areId,
    @JsonKey(name: "are_are_id", defaultValue: "") required String areAreId,
    @JsonKey(name: "tmt_ar", defaultValue: "") required String expensesTypeAr ,
    @JsonKey(name: "tmt_en", defaultValue: "") required String expensesTypeEn,
    @JsonKey(name: "amt_tot", defaultValue: "") required String totalAmount,
    @JsonKey(name: "acl_status_code", defaultValue: "") required String actualStatusCode ,
    @JsonKey(name: "dt_created", defaultValue: "") required String createdDate ,
    @JsonKey(name: "are_desc_fo", defaultValue: "") required String area,
    @JsonKey(name: "are_desc_en", defaultValue: "") required String areaEn,
  }) = _PropertiesExpensesModel;

  factory PropertiesExpensesModel.fromJson(Map<String, dynamic> json) => _$PropertiesExpensesModelFromJson(json);

  String get getDate{
    return createdDate.formatTimeStampDate();
  }
}

