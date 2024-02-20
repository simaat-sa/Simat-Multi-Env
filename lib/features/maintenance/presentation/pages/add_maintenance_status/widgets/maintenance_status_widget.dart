part of 'add_maintenance_status_widgets_imports.dart';

class CompleteAddFormWidget extends StatelessWidget {
  final MaintenanceModel? model;

  const CompleteAddFormWidget({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    final bool isSuccess = model != null;
    return Column(
      children: [
        SvgPicture.asset(
          isSuccess ? Res.successLogo : Res.failLogo,
          height: 100,
          width: 100,
        ),
        Gaps.vGap32,
        Text(
          textAlign: TextAlign.center,
          isSuccess ? Translate.s.maintenance_has_been_requested : Translate.s.something_went_wrong,
          style: AppTextStyle.s30_w400(color: context.colors.green4),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 30),
          child: Text(
            _data(isSuccess),
            textAlign: TextAlign.center,
            style: AppTextStyle.s16_w500(color: context.colors.textColor).copyWith(
              height: 1.6,
            ),
          ),
        ),
        Gaps.vGap16,
        const NewMaintenanceRequestButtonWidget(),
        InkWell(
          onTap: () => AutoRouter.of(context).pop(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Text(
              isSuccess ? Translate.s.back_to_maintenance_requests : Translate.s.maybe_later_back_to_the_main_page,
              style: AppTextStyle.s14_w500(color: context.colors.secondary),
            ),
          ),
        ),
      ],
    );
  }

  String _data(bool isSuccess) {
    return isSuccess
        ? Translate.s.message_containing_code_for_your_order(model!.code)
        : Translate.s.maintenance_request_failed_please_try_again;
  }
}
