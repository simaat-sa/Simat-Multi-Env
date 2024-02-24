import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_drawer_widget.dart';

class AuthScaffoldWidget extends StatefulWidget {
  final PreferredSizeWidget appBar;
  final Widget body;
  final Key? scaffoldKey;

  const AuthScaffoldWidget({super.key, required this.appBar, required this.body, this.scaffoldKey});

  @override
  State<AuthScaffoldWidget> createState() => _AuthScaffoldWidgetState();
}

class _AuthScaffoldWidgetState extends State<AuthScaffoldWidget> {
  final ObsValue<bool> showDropDawnCubit = ObsValue.withInit(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      key: widget.scaffoldKey,
      endDrawer: AuthDrawerWidget(
        onChangeLanguage: () => showDropDawnCubit.setValue(!showDropDawnCubit.getValue()),
        showDropDawnCubit: showDropDawnCubit,
      ),
      appBar: widget.appBar,
      body: widget.body,
    );
  }
}
