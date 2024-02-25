class NotificationsParams {
  List<String> ids;

  NotificationsParams({
    required this.ids,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    for (var i = 0; i < ids.length; i++) {
      json.addAll({"ids[$i]": ids[i]});
    }
    return json;
  }
}
