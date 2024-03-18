import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/widgets/unit_loading_item_widget.dart';

class UnitLoadingListWidget extends StatelessWidget {
  const UnitLoadingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemCount: 5,
      itemBuilder: (context, index) => const UnitLoadingItemWidget(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
