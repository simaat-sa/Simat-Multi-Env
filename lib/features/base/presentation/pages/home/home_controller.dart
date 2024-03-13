part of 'home_imports.dart';

class HomeController {
  // final ObsValue<bool> termsObs = ObsValue<bool>.withInit(false);
  late TabController tabController;
  final ObsValue<int> navigationBarObs = ObsValue<int>.withInit(0);
  final NoticesRequester requesterNotify = NoticesRequester();

  final BaseBloc<String> bloc = BaseBloc<String>();
  final BaseBloc<List<UserAccessModel>> pagesBloc = BaseBloc([]);


  void initPages (BuildContext context){
    var pages = context.read<UserCubit>().state.model!.userAccess;
    pages.sort((a, b) => a.pageNumber.compareTo(b.pageNumber));
    pagesBloc.successState(pages.take(5).toList());
  }

  void initBottomNavigation(TickerProvider ticker, int index) {
    var context = getIt.get<GlobalContext>().context();
    var listAccessUser = context.watch<UserCubit>().state.model!.userAccess;
    tabController =
        TabController(length: listAccessUser.take(4).length, vsync: ticker, initialIndex: index);
    tabController.animateTo(index);
    navigationBarObs.setValue(index);
  }


  void changeSelectPage(int index) {
    tabController.animateTo(index);
    navigationBarObs.setValue(index);
  }
}
