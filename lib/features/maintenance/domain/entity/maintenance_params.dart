class MaintenanceParams {
  final int page;
  final String? filter;
  final String? areaId;
  final String? search;
  final bool refresh;

  MaintenanceParams({
    required this.page,
    this.search,
    this.filter,
    this.areaId,
    this.refresh = true,
  });

  String header() {
    String header = "page=$page";
    if (search != null && search!.isNotEmpty) {
      header += "&search=$search";
    }
    if (filter != null && filter != "0") {
      header += "&filters[acl_status_code]=$filter";
    }   if (areaId != null) {
      header += "&filters[are_code]=$areaId";
    }
    return header;
  }
}
