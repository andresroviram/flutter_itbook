import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/error.dart';
import '../entities/entities.dart';
import '../repository/home_repository.dart';

@lazySingleton
class HomeUseCase {
  HomeUseCase(this.homeRepository);
  final IHomeRepository homeRepository;

  Future<Either<Failure, List<BookEntity>>> getBookNew() async {
    return homeRepository.getBookNew();
  }

  Future<Either<Failure, List<BookEntity>>> getBookSearch(String search) async {
    return homeRepository.getBookSearch(search);
  }

  Future<Either<Failure, BookEntity>> getBookDetail(String isbn13) async {
    return homeRepository.getBookDetail(isbn13);
  }
}
