part of 'home_imports.dart';

class HomeController {
  final ObsValue<bool> termsObs = ObsValue<bool>.withInit(false);
  late TabController tabController;
  final ObsValue<int> navigationBarObs = ObsValue<int>.withInit(0);

  final BaseBloc<String> bloc = BaseBloc<String>();

  void initBottomNavigation(TickerProvider ticker, int index) {
    var context = getIt.get<GlobalContext>().context();
    var listAccessUser = context.watch<UserCubit>().state.model!.userAccess;
    tabController = TabController(length: listAccessUser.take(5).length, vsync: ticker, initialIndex: index);
    tabController.animateTo(index);
    navigationBarObs.getValue();
  }
}
