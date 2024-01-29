part of 'login_imports.dart';

class LoginController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  ObsValue<bool> visabelBloc = ObsValue.withInit(false);



  void onSubmit(BuildContext context){
    // AutoRouter.of(context).push(const HomeRoute());
    getIt.get<LoadingHelper>().showLoadingDialog();
  }

}
