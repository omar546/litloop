import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'best_seller_item.dart';

SliverList buildBookList(List<BookEntity> books, {bool isLoading = false}) {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
          (context, index) {
        if (index == books.length) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Center(child: CircularProgressIndicator()),
          );
        }

        final book = books[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: BestSellerItem(
            title: book.title,
            authorName: book.authorName ?? '',
            price: book.price.toString(),
            imageUrl: book.image ?? '',
          ),
        );
      },
      childCount: isLoading ? books.length + 1 : books.length,
    ),
  );
}
