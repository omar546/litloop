import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/best_seller_item.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: const BestSellerItem(imageUrl: '',),
        );
      },
    );
  }
}
