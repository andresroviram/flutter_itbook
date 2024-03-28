part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    Failure? failure,
    @Default(true) bool isLoading,
    @Default(false) bool isDone,
    @Default([]) List<BookEntity> books,
    @Default([]) List<BookEntity> searchBooks,
    @Default([]) List<String> historyList,
    @Default('') String searchResult,
  }) = _Initial;
}
