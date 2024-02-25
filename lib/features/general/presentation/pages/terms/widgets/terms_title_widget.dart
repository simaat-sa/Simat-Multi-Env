part of 'terms_widgets_imports.dart';

class TermsTitleWidget extends StatelessWidget {
  const TermsTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
      Translate.s.concerns_and_concerns_about_the_privacy,
          style: AppTextStyle.s14_w400(color: context.colors.darkTextColor).copyWith(height: 1.2),
        ),
         TermsTitleItemWidget(
          title: Translate.s.Internet_Protocol_address,
          subTitle:Translate.s.server_visit_any_website,
        ),
         TermsTitleItemWidget(
          title: Translate.s.Network_scans,
          subTitle:Translate.s.The_surveys_that_we_conduct_directly_on_the_network
        ),
         TermsTitleItemWidget(
          title: Translate.s.Links_to_other_sites_on_Internet,
          subTitle: Translate.s.Our_site_may_include_links_to_other_sites
        ),
         TermsTitleItemWidget(
          title: Translate.s.Disclosure_of_information,
          subTitle:Translate.s.Disclosure_of_information_desc
        ),
         TermsTitleItemWidget(
          title: Translate.s.When_you_contact_us,
          subTitle: Translate.s.When_you_contact_us_desc,
        ),
         TermsTitleItemWidget(
          title: Translate.s.Disclosure_of_information_to_any_third_party,
          subTitle:Translate.s.Disclosure_of_information_to_any_third_party_desc
        ),
         TermsTitleItemWidget(
          title: Translate.s.Amendments_to_information_confidentiality,
          subTitle: Translate.s.Amendments_to_information_confidentiality_desc
        ),
         TermsTitleItemWidget(
          title: Translate.s.finally_policy,
          subTitle: Translate.s.finally_desc
        ),
      ],
    );
  }
}
