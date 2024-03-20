class MaintenanceParams {
  final int page;
  final String? filter;
  final String? areId;
  final String? search;
  final bool refresh;

  MaintenanceParams({
    required this.page,
    this.search,
    this.filter,
    this.areId,
    this.refresh = true,
  });

  String header() {
    String header = "page=$page";
    if (search != null && search!.isNotEmpty) {
      header += "&search=$search";
    }
    if (filter != null && filter != "0") {
      header += "&filters[acl_status_code]=$filter";
    }   if (areId != null) {
      header += "&filters[are_are_id]=$areId";
      // header += "&prop_id=$areId";
    }
    return header;
  }
}
