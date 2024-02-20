part of 'notices_screen_imports.dart';

@RoutePage(name: 'NoticesScreenRoute')
class NoticesScreen extends StatefulWidget {
  const NoticesScreen({super.key});

  @override
  State<NoticesScreen> createState() => _NoticesScreenState();
}

class _NoticesScreenState extends State<NoticesScreen> {
  @override
  Widget build(BuildContext context) {
    bool isNotEmpty = true;
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Column(
        children: [
          const NoticesAppBarWidget(),
          Visibility(
            visible: isNotEmpty,
            replacement: const NoticesEmptyItemWidget(),
            child: Flexible(
              child: ListView(
                children: [
                  const NoticesTitleItemWidget(),
                  Gaps.vGap12,
                  const NoticesListItemWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
