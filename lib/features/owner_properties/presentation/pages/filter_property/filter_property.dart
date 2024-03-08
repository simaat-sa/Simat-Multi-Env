part of'filter_property_imports.dart';

@RoutePage(name: 'FilterPropertyRoute')
class FilterProperty extends StatelessWidget {
  const FilterProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      color: context.colors.white,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: context.colors.white,
        child: Column(
          children: [
            const FilterPropertyAppBar(),
            Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const FilterPropertyTitleItemWidget(title: 'حالة العقار'),
                  const FilterPropertySelectItemWidget(title: 'يوجد شواغر'),
                  const FilterPropertySelectItemWidget(title: 'لا يوجد شواغر'),
                  const FilterPropertySelectItemWidget(title: 'يوجد استحقاقات'),
                  const FilterPropertySelectItemWidget(title: 'بدون استحقاقات'),
                  Divider(thickness: 1, height: 30, color: context.colors.backgroundLight),
                  const FilterPropertyTitleItemWidget(title: 'نوع العقار'),
                  const FilterPropertySelectItemWidget(title: 'عمارة'),
                  const FilterPropertySelectItemWidget(title: 'دوبلكس'),
                  const FilterPropertySelectItemWidget(title: 'شقق فندقية'),
                  const FilterPropertySelectItemWidget(title: 'شقق مفروشة'),
                  const FilterPropertySelectItemWidget(title: 'استراحة'),
                  Divider(thickness: 1, height: 30, color: context.colors.backgroundLight),
                  const FilterPropertyTitleItemWidget(title: 'فئة العقار'),
                  const FilterPropertySelectItemWidget(title: 'سكني/تجاري'),
                  const FilterPropertySelectItemWidget(title: 'اداري'),
                  const FilterPropertySelectItemWidget(title: 'تجاري'),
                ],
              ),
            ),
            const FilterPropertyButtonsWidget(),
          ],
        ),
      ),
    );
  }
}
