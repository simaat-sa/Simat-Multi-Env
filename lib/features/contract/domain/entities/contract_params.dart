class ContractParams {
  final int page;
  final String? statusFilter;
  final String? typeFilter;
  final String? search;
  final bool refresh;

  ContractParams({
    required this.page,
    this.search,
    this.statusFilter,
    this.typeFilter,
    this.refresh = true,
  });

  String header() {
    String header = "page=$page";
    if (search != null && search!.isNotEmpty) {
      header += "&search=$search";
    }
    if (typeFilter != null && typeFilter != "") {
      header += "&filters[contract_type]=$typeFilter";
    }
    if (statusFilter != null && statusFilter != "") {
      header += "&filters[tts_validity]=$statusFilter";
    }
    return header;
  }
}
