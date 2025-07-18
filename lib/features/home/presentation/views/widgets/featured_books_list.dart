import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:litloop/features/home/domain/entities/book_entity.dart';

import '../../../../../../core/utils/app_router.dart';
import 'custom_book_item.dart';
import '../../manager/featured_books_cubit/featured_books_cubit.dart';

class FeaturedBooksList extends StatefulWidget {
  const FeaturedBooksList({super.key, required this.books});

  final List<BookEntity> books;

  @override
  State<FeaturedBooksList> createState() => _FeaturedBooksListState();
}

class _FeaturedBooksListState extends State<FeaturedBooksList> {
  late final ScrollController _scrollController;
  var nextPage = 1;
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() async {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (currentScroll >= maxScroll * 0.7){
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FeaturedBooksCubit>(
          context,
        ).fetchFeaturedBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kDetailsView);
            },
            child: CustomBookItem(imageUrl: widget.books[index].image ?? ''),
          );
        },
      ),
    );
  }
}
