import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/notification/presentation/widgets/notices_loading_item.dart';

class NoticesLoadingListWidget extends StatelessWidget {
  const NoticesLoadingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemCount: 5,
      itemBuilder: (context, index) => const NoticesLoadingItem(),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
