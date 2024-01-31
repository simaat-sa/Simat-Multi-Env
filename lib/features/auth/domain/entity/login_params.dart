class LoginParams {
  String logUser;
  String logPassword;


  LoginParams({
    required this.logPassword,
    required this.logUser,
  });

  Map<String, dynamic> toJson() => {
    'log_user': logUser,
    'log_pass': logPassword,
  };

  factory LoginParams.fromJson(Map<String, dynamic> json) => LoginParams(
    logUser: json['log_user'],
    logPassword: json['log_pass'],
  );
}
