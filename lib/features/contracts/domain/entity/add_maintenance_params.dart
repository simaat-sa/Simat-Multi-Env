import 'dart:developer';

class AddMaintenanceParams {
  final String areAreId;
  final String areId;
  final String contactName;
  final String contactMobile;
  final String maintDesc;
  final String dtCreated;
  final String createBy;
  final String dtDue;
  final bool paymentByClient;
  final List<String> maintType;
  final String creatorPay;

  AddMaintenanceParams({
    required this.areAreId,
    required this.areId,
    required this.contactName,
    required this.contactMobile,
    required this.maintDesc,
    required this.dtCreated,
    required this.createBy,
    required this.dtDue,
    required this.paymentByClient,
    required this.maintType,
    required this.creatorPay,
  });

  Map<String, dynamic> toJson() {
    var json = {
      "are_are_id": areAreId,
      "are_id": areId,
      "contact_name": contactName,
      "contact_mobile": contactMobile,
      "maint_desc": maintDesc,
      "dt_created": dtCreated,
      "create_by": createBy,
      "dt_due": dtDue,
      "payment_by": paymentByClient ? "client" : "",
      "creator_pay": creatorPay,
    };
    for (var i = 0; i < maintType.length; i++) {
      json.addAll({"maint_type[$i]": maintType[i]});
    }
    return json;
  }
}
