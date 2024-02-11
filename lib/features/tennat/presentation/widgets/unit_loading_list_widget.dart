import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/tennat/presentation/widgets/unit_loading_item.dart';

class UnitLoadingListWidget extends StatelessWidget {
  const UnitLoadingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemCount: 5,
      itemBuilder: (context, index) => const UnitLoadingItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
