import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestSellersList extends StatelessWidget {
  const BestSellersList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: const BestSellerItem(),
        );
      },
    );
  }
}
