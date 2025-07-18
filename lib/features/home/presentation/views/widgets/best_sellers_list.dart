import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'best_seller_item.dart';

class BestSellersList extends StatelessWidget {
  const BestSellersList({super.key, required this.books});
  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: BestSellerItem(imageUrl: books[index].image ?? ''),
        );
      },
    );
  }
}
