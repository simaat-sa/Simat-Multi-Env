part of'verify_otp_imports.dart';


class VerifyOtpController{
  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  TextEditingController verifyOTP = TextEditingController();


  final BaseBloc<String> phoneCubit = BaseBloc("");

  void onChangePhone(String value){
    phoneCubit.successState(value);
  }
}