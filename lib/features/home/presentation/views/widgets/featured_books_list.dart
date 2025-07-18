import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:litloop/features/home/domain/entities/book_entity.dart';

import '../../../../../../core/utils/app_router.dart';
import 'custom_book_item.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key, required this.books});

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: ListView.builder(
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kDetailsView);
            },
            child: CustomBookItem(imageUrl: books[index].image ?? ''),
          );
        },
      ),
    );
  }
}
