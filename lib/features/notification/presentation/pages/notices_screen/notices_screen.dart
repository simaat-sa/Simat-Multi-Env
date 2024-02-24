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
      appBar: const DefaultAppBar(
        centerTitle: false,
        title: 'الإشعارات',
        showBack: true,
      ),
      body: RequesterConsumer(
        requester: controller.requester,
        successBuilder: (context, data) {
          return Visibility(
            visible: isNotEmpty,
            replacement: const NoticesEmptyItemWidget(),
            child: ListView(
              children: [
                Gaps.vGap12,
                NoticesListItemWidget(
                  list: data,
                ),
              ],
            ),
          );
        },
        loadingBuilder: (context) {
          return const NoticesLoadingListWidget();
        },
        failureBuilder: (context, error, callback) {
          return Container(color: Colors.red);
        },
      ),
    );
  }
}
