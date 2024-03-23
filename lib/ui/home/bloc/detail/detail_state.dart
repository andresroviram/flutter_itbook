part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(false) bool isLoading,
    Failure? failure,
    required BookEntity book,
    String? isbn13,
  }) = _Initial;

  factory DetailState.initial() => DetailState(book: BookEntity.empty());
}
