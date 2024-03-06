class MaintenanceParams {
  int page;
  String? search;
  String? filters;
  bool refresh;

  MaintenanceParams({
    this.filters,
    required this.page,
    this.search,
    this.refresh = true,
  });

  String header() =>'';
}
