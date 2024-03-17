class OwnerPropertiesParams{
  int page;
  String? search;
  bool refresh;
  String? selectedFilter;

  OwnerPropertiesParams({
    required this.page,
    this.search,
    this.refresh = true,
    this.selectedFilter,
  });

  String header({bool noHeader = true}) {
    String header = "?page=$page";
    if (search != null && search!.isNotEmpty) {
      header += "&search=$search";
    }
    if (selectedFilter != null && selectedFilter!.isNotEmpty) {
      header += "&filters[$selectedFilter]=manage";
    }
    return header;
  }
}