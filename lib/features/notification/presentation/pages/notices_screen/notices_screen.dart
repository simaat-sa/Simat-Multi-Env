part of 'notices_screen_imports.dart';

@RoutePage(name: 'NoticesScreenRoute')
class NoticesScreen extends StatefulWidget {
  const NoticesScreen({super.key});

  @override
  State<NoticesScreen> createState() => _NoticesScreenState();
}

class _NoticesScreenState extends State<NoticesScreen> {
  final NoticesScreenController controller = NoticesScreenController();
  @override
  void initState() {
    controller.requestData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    bool isNotEmpty = true;
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Column(
        children: [
          const NoticesAppBarWidget(),
          RequesterConsumer(
            requester: controller.requester,
            successBuilder: (context, data) {
              return Visibility(
                visible: isNotEmpty,
                replacement: const NoticesEmptyItemWidget(),
                child: Flexible(
                  child: ListView(
                    children: [
                      Gaps.vGap12,
                      NoticesListItemWidget(list: data,),
                    ],
                  ),
                ),
              );
            },
            loadingBuilder: (context) {
              return const NoticesLoadingListWidget();
            },
            failureBuilder: (context, error, callback) {
              callback.call();
              error.message;
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
