import 'package:bloc/bloc.dart';
import 'package:litloop/features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/book_entity.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.newestBooksUseCase) : super(NewestBooksInitial());
  final FetchNewestBooksUseCase newestBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    try {
      var result = await newestBooksUseCase.call();
      result.fold(
        (failure) => emit(NewestBooksFailure(failure.message)),
        (books) => emit(NewestBooksSuccess(books)),
      );
    } catch (e) {
      emit(NewestBooksFailure(e.toString()));
    }
  }
}
