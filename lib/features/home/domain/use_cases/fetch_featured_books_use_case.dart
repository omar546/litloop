import 'package:dartz/dartz.dart';
import 'package:litloop/features/home/domain/repos/home_repo.dart';

import '../../../../core/errors/failure.dart';
import '../entities/book_entity.dart';

class FetchNewestBooksUseCase {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> call() {
    //check permission
    return homeRepo.fetchFeaturedBooks();
  }
}
