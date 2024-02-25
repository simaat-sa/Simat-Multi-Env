import 'package:flutter_tdd/core/constants/enum_extension/enum_factory_extension.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum LogOutEnum {
  success("success"),
  failed("failed");

  final String value;

  const LogOutEnum(this.value);

}