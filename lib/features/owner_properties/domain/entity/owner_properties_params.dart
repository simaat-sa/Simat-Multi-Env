class OwnerPropertiesParams{
  int page;
  String? search;
  bool refresh;
  String? category;
  String? type;

  OwnerPropertiesParams({
    required this.page,
    this.search,
    this.refresh = true,
    this.category,
    this.type,
  });

  String header({bool noHeader = true}) {
    String header = "?page=$page";
    if (search != null && search!.isNotEmpty) {
      header += "&search=$search";
    }
    if (category != null && category!.isNotEmpty) {
      header += "&filters[ree_code]=$category";
    }
    if (type != null && type!.isNotEmpty) {
      header += "&filters[myo_code]=$type";
    }
    return header;
  }
}