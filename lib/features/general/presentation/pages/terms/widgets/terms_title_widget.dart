part of 'terms_widgets_imports.dart';

class TermsTitleWidget extends StatelessWidget {
  const TermsTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
      Translate.of(context).concerns_and_concerns_about_the_privacy,
          style: AppTextStyle.s14_w400(color: context.colors.darkTextColor).copyWith(height: 1.2),
        ),
         TermsTitleItemWidget(
          title: Translate.of(context).Internet_Protocol_address,
          subTitle:Translate.of(context).server_visit_any_website,
        ),
         TermsTitleItemWidget(
          title: Translate.of(context).Network_scans,
          subTitle:Translate.of(context).The_surveys_that_we_conduct_directly_on_the_network
        ),
         TermsTitleItemWidget(
          title: Translate.of(context).Links_to_other_sites_on_Internet,
          subTitle: Translate.of(context).Our_site_may_include_links_to_other_sites
        ),
         TermsTitleItemWidget(
          title: Translate.of(context).Disclosure_of_information,
          subTitle:Translate.of(context).Disclosure_of_information_desc
        ),
         TermsTitleItemWidget(
          title: Translate.of(context).When_you_contact_us,
          subTitle: Translate.of(context).When_you_contact_us_desc,
        ),
         TermsTitleItemWidget(
          title: Translate.of(context).Disclosure_of_information_to_any_third_party,
          subTitle:Translate.of(context).Disclosure_of_information_to_any_third_party_desc
        ),
         TermsTitleItemWidget(
          title: Translate.of(context).Amendments_to_information_confidentiality,
          subTitle: Translate.of(context).Amendments_to_information_confidentiality_desc
        ),
         TermsTitleItemWidget(
          title: Translate.of(context).finally_policy,
          subTitle: Translate.of(context).finally_desc
        ),
      ],
    );
  }
}
