import 'package:flutter_tdd/core/models/api_model/base_api_model.dart';
import 'package:flutter_tdd/features/tennat/domain/models/tennat.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tennat_model.freezed.dart';

part 'tennat_model.g.dart';

@freezed
class TenantModel extends BaseApiModel<Tenant> with _$TenantModel {
  const TenantModel._();

  @JsonSerializable(explicitToJson: true)
  factory TenantModel({
    @JsonKey(name: 'prop_id')required String propId,
    @JsonKey(name: 'are_id')required String areId,
    @JsonKey(name: 'are_code')required String areCode,
    @JsonKey(name: 'are_are_id')required String areAreId,
    @JsonKey(name: 'parent_code')required String parentCode,
    @JsonKey(name: 'prop_img')required String propImg,
    @JsonKey(name: 'prop_lat')required String propLat,
    @JsonKey(name: 'prop_lng')required String propLng,
    @JsonKey(name: 'deed_issue')required String deedIssue,
    @JsonKey(name: 'deed_name')required String deedName,
    @JsonKey(name: 'myo_code')required String myoCode,
    @JsonKey(name: 'prop_city')required String propCity,
    @JsonKey(name: 'prop_region')required String propRegion,
    @JsonKey(name: 'are_desc_full')required String areDescFull,
    @JsonKey(name: 'amt_tot')required String amtTot,
  }) = _TenantModel;

  factory TenantModel.fromJson(Map<String, dynamic> json) => _$TenantModelFromJson(json);

  @override
  Tenant toDomainModel() {
    return Tenant(
      areAreId: areAreId,
      areDescFull: areDescFull,
      areCode: areCode,
      areId: areId,
      deedIssue: deedIssue,
      deedName: deedName,
      myoCode: myoCode,
      parentCode: parentCode,
      propCity: propCity,
      propId: propId,
      propImg: propImg,
      propLat: propLat,
      propLng: propLng,
      propRegion: propRegion,
      amtTot: amtTot,
    );
  }
}
