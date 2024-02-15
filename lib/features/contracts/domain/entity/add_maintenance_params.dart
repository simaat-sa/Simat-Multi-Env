class AddMaintenanceParams {
  final int areAreId;
  final int areId;
  final String contactName;
  final String contactMobile;
  final String maintDesc;
  final String dtCreated;
  final int createBy;
  final String dtDue;
  final String paymentBy;
  final String maintType;
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
    required this.paymentBy,
    required this.maintType,
    required this.creatorPay,
  });

  Map<String, dynamic> toJson() => {
        "are_are_id": areAreId,
        "are_id": areId,
        "contact_name": contactName,
        "contact_mobile": contactMobile,
        "maint_desc": maintDesc,
        "dt_created": dtCreated,
        "create_by": createBy,
        "dt_due": dtDue,
        "payment_by": paymentBy,
        "maint_type": maintType,
        "creator_pay": creatorPay,
      };
}
