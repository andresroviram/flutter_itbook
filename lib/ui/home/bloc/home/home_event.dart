part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.init() = _Init;
  const factory HomeEvent.search({required String search}) = _Search;
  const factory HomeEvent.removeHistory(String history) = _RemoveHistory;
  const factory HomeEvent.getBookNew() = _GetBookNew;
  const factory HomeEvent.getBookSearch({
    required String search,
  }) = _GetBookSearh;
  const factory HomeEvent.getImagePokemon() = _GetImagePokemon;
  const factory HomeEvent.refreshBooks() = _RefreshBooks;
  const factory HomeEvent.invalidate() = _Invalidate;
  const factory HomeEvent.initScrollController() = _GetScrollController;
}
