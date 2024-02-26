part of 'home_imports.dart';

@RoutePage()
class Home extends StatefulWidget {
  final int index;

  const Home({super.key, this.index = 0});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final HomeController controller = HomeController();

  @override
  void initState() {
    controller.initPages(context);
    controller.initBottomNavigation(this, widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
