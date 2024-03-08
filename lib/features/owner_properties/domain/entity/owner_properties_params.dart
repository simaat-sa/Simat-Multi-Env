class OwnerPropertiesParams{
  int page;
  String? search;
  bool refresh;

  OwnerPropertiesParams({
    required this.page,
    this.search,
    this.refresh = true,
  });

  String header({bool noHeader = true}) {
    String header = "?page=$page";
    if (search != null && search!.isNotEmpty) {
      header += "&search=$search";
    }
    return header;
  }
}