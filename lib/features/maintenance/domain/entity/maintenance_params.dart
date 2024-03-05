class MaintenanceParams {
  final int page;
  final List<String>? filtersName;
  final String? search;
  final bool refresh;

  MaintenanceParams({
    required this.page,
    this.search,
    this.filtersName,
    this.refresh = true,
  });
}
