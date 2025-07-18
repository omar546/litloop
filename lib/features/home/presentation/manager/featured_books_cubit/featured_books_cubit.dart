import 'package:bloc/bloc.dart';
import 'package:litloop/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:meta/meta.dart';

import '../../../domain/entities/book_entity.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    try {
      var result = await featuredBooksUseCase.call();
      result.fold(
        (failure) => emit(FeaturedBooksFailure(failure.message)),
        (books) => emit(FeaturedBooksSuccess(books)),
      );
    } catch (e) {
      emit(FeaturedBooksFailure(e.toString()));
    }
  }
}
