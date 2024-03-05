part of 'forget_password_imports.dart';

class ForgetPasswordController {
  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  TextEditingController email = TextEditingController();

  final BaseBloc<String> phoneCubit = BaseBloc("");

  void onChangePhone(String value) {
    phoneCubit.successState(value);
  }
}
