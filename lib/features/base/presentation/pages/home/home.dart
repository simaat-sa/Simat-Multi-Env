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
    return DefaultTabController(
      length: listAccessUser.length,
      initialIndex: widget.index,
      child: Scaffold(
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller.tabController,
          children: List.generate(listAccessUser.length, (index) {
            return const TennatScreen();
          }),
        ),
        bottomNavigationBar: BottomNavBarWidget(controller: controller),
      ),
    );
  }
}
