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
    controller.initBottomNavigation(this, widget.index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var listAccessUser = context.watch<UserCubit>().state.model!.userAccess.take(5).toList();
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: DefaultTabController(
        length: listAccessUser.length,
        initialIndex: widget.index,
        child: Scaffold(
          backgroundColor: context.colors.background,
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller.tabController,
            children: List.generate(listAccessUser.length, (index) {
              return listAccessUser[index].pageCode.getPage();
            }),
          ),
          bottomNavigationBar: BottomNavBarWidget(controller: controller),
        ),
      ),
    );
  }
}
