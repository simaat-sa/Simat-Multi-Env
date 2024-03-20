class PropertyDetailsParams{
  String propId;
  String? filter;
  bool refresh;

  PropertyDetailsParams({
    required this.propId,
    this.filter,
    this.refresh = true,
  });

  String header() {
    String header = "prop_id=$propId";
    if (filter != null && filter != "") {
      header += "&filters[acl_status_code]=$filter";
    }
    return header;
  }
}