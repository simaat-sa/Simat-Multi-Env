part of 'terms_imports.dart';

@RoutePage(name: 'TermsRoute')
class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  final TermsData termsData = TermsData();

  @override
  void initState() {
    super.initState();
  }

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
                    size: 24,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 10.r, bottom: 15, top: 5),
              child: Text(
                Translate.of(context).Privacy_Policy_and_Confidentiality,
                style: AppTextStyle.s24_w400(color: context.colors.darkTextColor).copyWith(height: 1.2),
              ),
            ),
            Flexible(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 22),
                children: const [
                  TermsTitleWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
