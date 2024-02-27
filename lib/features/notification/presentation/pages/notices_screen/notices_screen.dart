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
    controller.requestNotifyData();
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Visibility(
                  visible: controller.unReadListIds().isNotEmpty,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 5),
                    child: GestureDetector(
                      onTap: () => controller.readAllNotifications(),
                      child: Text(
                        Translate.of(context).mark_all_read,
                        style: AppTextStyle.s14_w400(color: context.colors.textColor),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      NoticesListItemWidget(
                        list: data,
                        controller: controller,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        loadingBuilder: (context) {
          return const NoticesLoadingListWidget();
        },
        failureBuilder: (context, error, callback) {
          return FailureViewWidget(onTap: callback);
        },
      ),
    );
  }
}
