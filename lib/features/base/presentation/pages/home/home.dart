part of 'home_imports.dart';

@RoutePage()
class Home extends StatefulWidget {
  final int index;
  final LoginParams? loginParams;

  const Home({super.key, this.index = 0, this.loginParams});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late HomeController controller;

  @override
  void initState() {
    controller = HomeController(widget.loginParams);
    controller.initPages(context);
    controller.initBottomNavigation(this, widget.index);
    NoticesRequester().request();
    controller.allowBiometricLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.allowBiometricLogin();
    return BaseBlocBuilder(
      bloc: controller.pagesBloc,
      onSuccessWidget: (pages) {
        if (pages.isEmpty) {
          return const AppLoaderWidget.largeLogo();
        }
        return PopScope(
          canPop: false,
          onPopInvoked: (_) {
            SystemNavigator.pop();
          },
          child: DefaultTabController(
            length: pages.length,
            initialIndex: widget.index,
            child: Scaffold(
              backgroundColor: context.colors.background,
              body: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller.tabController,
                children: [
                  ...List.generate(pages.length - 1, (index) {
                    return pages[index].pageCode.getPage();
                  }),
                  const MenuTap(),
                ],
              ),
              bottomNavigationBar: BottomNavBarWidget(
                controller: controller,
                pages: pages,
              ),
            ),
          ),
        );
      },
    );
  }
}
