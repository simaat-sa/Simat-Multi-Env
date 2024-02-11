part of 'tennat_screen_imports.dart';

class TennatScreen extends StatefulWidget {
  const TennatScreen({super.key});

  @override
  State<TennatScreen> createState() => _TennatScreenState();
}

class _TennatScreenState extends State<TennatScreen> {
  final TennatScreenController controller = TennatScreenController();

  @override
  void initState() {
    controller.initRequester();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TennatAppBar(),
      body: RequesterConsumer(
        requester: controller.requester,
        successBuilder: (context, data) {
          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            children: [
              const HeaderTextWidget(),
              Gaps.vGap10,
              ...List.generate(data.length, (index) {
                return TennatScreenItemWidget(model: data[index],);
              },)
            ],
          );
        },
        failureBuilder: (context, error, callback) {
          return Container();
        },
        loadingBuilder: (context) {
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
