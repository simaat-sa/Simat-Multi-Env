class LoginParams {
  String logUser;
  String logPassword;
  String deviceToken;


  LoginParams({
    required this.deviceToken,
    required this.logPassword,
    required this.logUser,
  });

  Map<String, dynamic> toJson() => {
    'log_user': logUser,
    'log_pass': logPassword,
    'device_token':deviceToken,
  };

  factory LoginParams.fromJson(Map<String, dynamic> json) => LoginParams(
    deviceToken: json['device_token'],
    logUser: json['log_user'],
    logPassword: json['log_pass'],
  );
}
