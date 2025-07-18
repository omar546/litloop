import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:litloop/features/home/domain/use_cases/fetch_newest_books_use_case.dart';

import '../../../domain/entities/book_entity.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.newestBooksUseCase) : super(NewestBooksInitial());

  final FetchNewestBooksUseCase newestBooksUseCase;

  List<BookEntity> allBooks = [];

  Future<void> fetchNewestBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(NewestBooksLoading());
      allBooks = [];
    } else {
      emit(NewestBooksPaginationLoading(allBooks));
    }

    try {
      final result = await newestBooksUseCase.call(pageNumber);
      result.fold(
        (failure) {
          if (pageNumber == 0) {
            emit(NewestBooksFailure(failure.message));
          } else {
            emit(NewestBooksPaginationFailure(failure.message));
          }
        },
        (books) {
          allBooks.addAll(books);
          emit(NewestBooksSuccess(List.from(allBooks)));
        },
      );
    } catch (e) {
      emit(NewestBooksFailure(e.toString()));
    }
  }
}
