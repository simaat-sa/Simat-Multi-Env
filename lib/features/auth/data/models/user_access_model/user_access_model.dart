import 'package:flutter_tdd/core/enums/access_pages_enum.dart';
import 'package:flutter_tdd/core/models/localized_name_model/localized_name_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_access_model.freezed.dart';
part 'user_access_model.g.dart';

@unfreezed
class UserAccessModel with _$UserAccessModel {
  const UserAccessModel._();
  @JsonSerializable(explicitToJson: true)
  factory UserAccessModel({
    required String pageid,
    @JsonKey(name: 'page_code') required AccessPages pageCode,
    @JsonKey(name: 'page_ar') required String pageAr,
    @JsonKey(name: 'page_en') required String pageEn,
    @JsonKey(name: 'is_root') required String isRoot,
    @JsonKey(name: 'page_active') required String pageActive,
    @JsonKey(name: 'page_image') required String pageImage,
    @JsonKey(name: 'page_desc') required String pageDesc,
    @JsonKey(name: 'page_name') required String pageName,
    @JsonKey(name: 'icon_svg') required String iconSvg,
    @JsonKey(name: 'page_order') required String pageOrder,
  }) = _UserAccessModel;

  factory UserAccessModel.fromJson(Map<String, dynamic> json) => _$UserAccessModelFromJson(json);


  String get localizedName => LocalizedNameModel.fromStrings(ar: pageAr, en: pageEn).getLocalizedString;


  int get pageNumber => int.parse(pageOrder);

}
