part of 'get_code_info_imports.dart';

@RoutePage(name: "GetCodeInfoRoute")
class GetCodeInfo extends StatefulWidget {
  const GetCodeInfo({super.key});

  @override
  State<GetCodeInfo> createState() => _GetCodeInfoState();
}

class _GetCodeInfoState extends State<GetCodeInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(22, 22, 22, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(
                    Icons.close,
                    color: context.colors.black,
                    size: 35,
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListView(
                children: const [
                  GetCodeInfoTitleWidget(),
                  GetCodeView(),
                  GetCodePhoneScreen(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
