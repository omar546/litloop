import 'package:dartz/dartz.dart';
import 'package:litloop/features/home/domain/entities/book_entity.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({int pageNumber = 0});
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks({int pageNumber = 0});
}
