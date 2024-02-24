class QrLoginParams {
  String token;
  String deviceToken;

  QrLoginParams({
    required this.deviceToken,
    required this.token,
  });

  Map<String, dynamic> toJson() => {
        '_token': token,
        'device_token': deviceToken,
      };
}
