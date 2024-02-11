import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';

class Tennat extends BaseDomainModel {
  String propId;
  String areId;
  String areCode;
  String areAreId;
  String parentCode;
  String propImg;
  String propLat;
  String propLng;
  String deedIssue;
  String deedName;
  String myoCode;
  String propCity;
  String propRegion;
  String areDescFull;
  String amtTot;

  Tennat({
    required this.areAreId,
    required this.areDescFull,
    required this.areCode,
    required this.areId,
    required this.deedIssue,
    required this.deedName,
    required this.myoCode,
    required this.parentCode,
    required this.propCity,
    required this.propId,
    required this.propImg,
    required this.propLat,
    required this.propLng,
    required this.propRegion,
    required this.amtTot,
  });
}
