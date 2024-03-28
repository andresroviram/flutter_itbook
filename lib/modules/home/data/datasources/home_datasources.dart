import 'package:injectable/injectable.dart';
import 'package:inlaze/core/utils/extension/extension.dart';
import 'package:inlaze/core/utils/extension/http.dart';

import '../../../../core/services/services.dart';
import '../end_points.dart';
import '../models/models.dart';

abstract class IHomeDatasource {
  Future<List<BookModel>> getBookNew();
  Future<List<BookModel>> getBookSearch(String search);
  Future<BookModel> getBookDetail(String isbn13);
}

@Injectable(as: IHomeDatasource)
class HomeDatasource implements IHomeDatasource {
  HomeDatasource({
    required this.baseClient,
  });

  final BaseClient baseClient;

  @override
  Future<List<BookModel>> getBookNew() async {
    try {
      return (await baseClient.get(
        path: EndPoint.newList,
      ))!
          .withListConverterFromKey<BookModel>(
        'books',
        callback: BookModel.fromJson,
      );
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<BookModel>> getBookSearch(String search) async {
    try {
      return (await baseClient.get(
        path: EndPoint.bookSearch.toParamUrl(<String, dynamic>{
          'search': search,
        })!,
      ))!
          .withListConverterFromKey<BookModel>(
        'books',
        callback: BookModel.fromJson,
      );
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<BookModel> getBookDetail(String isbn13) async {
    try {
      return (await baseClient.get(
        path: EndPoint.bookDetail.toParamUrl(<String, String>{
          'isbn13': isbn13,
        })!,
      ))!
          .withConverter<BookModel>(
        callback: BookModel.fromJson,
      );
    } on Exception catch (_) {
      rethrow;
    }
  }
}
