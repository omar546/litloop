import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:litloop/features/home/domain/entities/book_entity.dart';
import 'package:litloop/features/home/presentation/views/widgets/featured_books_list_loading_indicator.dart';

import '../../manager/featured_books_cubit/featured_books_cubit.dart';
import 'featured_books_list.dart';

class FeaturedBooksLitViewBlocBuilder extends StatefulWidget {
  const FeaturedBooksLitViewBlocBuilder({super.key});

  @override
  State<FeaturedBooksLitViewBlocBuilder> createState() =>
      _FeaturedBooksLitViewBlocBuilderState();
}

class _FeaturedBooksLitViewBlocBuilderState
    extends State<FeaturedBooksLitViewBlocBuilder> {
  List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeaturedBooksCubit, FeaturedBooksState>(
      listener: (context, state) {
        if (state is FeaturedBooksSuccess) {
          books.addAll(state.books);
        }
        if(state is FeaturedBooksPaginationFailure){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is FeaturedBooksSuccess ||
            state is FeaturedBooksPaginationLoading || state is FeaturedBooksPaginationFailure) {
          return FeaturedBooksList(books: books);
        } else if (state is FeaturedBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return const Center(child: FeaturedBooksListLoadingIndicator());
        }
      },
    );
  }
}
