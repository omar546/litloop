import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:litloop/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

import 'best_sellers_list.dart';

class NewestBooksListBlocBuilderSliver extends StatelessWidget {
  const NewestBooksListBlocBuilderSliver({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.errMessage)),
          );
        } else if (state is NewestBooksSuccess) {
          return buildBookList(state.books);
        } else if (state is NewestBooksPaginationLoading) {
          return buildBookList(state.oldBooks, isLoading: true);
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }}
