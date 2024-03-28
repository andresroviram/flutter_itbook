import 'package:either_dart/either.dart';

import '../../../../core/error/error.dart';
import '../entities/entities.dart';

abstract class IHomeRepository {
  Future<Either<Failure, List<BookEntity>>> getBookNew();
  Future<Either<Failure, List<BookEntity>>> getBookSearch(String search);
  Future<Either<Failure, BookEntity>> getBookDetail(String isbn13);
}
