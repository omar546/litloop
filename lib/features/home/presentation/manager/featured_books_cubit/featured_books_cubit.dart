import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:litloop/features/home/domain/use_cases/fetch_featured_books_use_case.dart';

import '../../../domain/entities/book_entity.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    } else {
      emit(FeaturedBooksPaginationLoading());
    }
    try {
      var result = await featuredBooksUseCase.call(pageNumber);
      result.fold(
        (failure) {
          if (pageNumber == 0) {
            emit(FeaturedBooksFailure(failure.message));
          } else {
            emit(FeaturedBooksPaginationFailure(failure.message));
          }
        },
        (books) => emit(FeaturedBooksSuccess(books)),
      );
    } catch (e) {
      emit(FeaturedBooksFailure(e.toString()));
    }
  }
}
