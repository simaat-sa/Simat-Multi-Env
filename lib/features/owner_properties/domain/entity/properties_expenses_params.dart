class PropertiesExpensesParams {
  bool? refresh;
  final String propId;
  final int page;

  PropertiesExpensesParams( {required this.propId, this.refresh,required this.page});

  Map<String, dynamic> toJson() => {
    "prop_id": propId,
    "page":page
  };
}
