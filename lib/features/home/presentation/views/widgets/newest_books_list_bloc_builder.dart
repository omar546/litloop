import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:litloop/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';

import 'best_sellers_list.dart';

class NewestBooksListBlocBuilder extends StatelessWidget {
  const NewestBooksListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is NewestBooksSuccess) {
          return BestSellersList(books: state.books,);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
