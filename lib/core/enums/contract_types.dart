import 'package:flutter_tdd/core/constants/enum_extension/enum_factory_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum ContractTypes {
  residential("residential"),
  commercial("commercial"),
  non("");

  final String value;

  const ContractTypes(this.value);

  factory ContractTypes.fromValue(String val) {
    try {
      return ContractTypes.values.enumFactory(val);
    } catch (_) {}
    return non;
  }

  String getLocalizedName(){
    switch (this) {
      case ContractTypes.residential:
        return "Residential";
      case ContractTypes.commercial:
        return "Commercial";
      default:
        return "";
    }
  }

}
