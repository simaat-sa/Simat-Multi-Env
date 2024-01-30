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
}
