import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/common/error/error.dart';
import '../../../../core/common/utils/helpers.dart';
import '../../../../core/home/domain/entities/entities.dart';
import '../../../../core/home/domain/usecases/home_usecases.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCase _homeUseCase;
  late OverlayEntry loader;
  late Debouncer debouncer;
  HomeBloc({required HomeUseCase homeUseCase})
      : _homeUseCase = homeUseCase,
        debouncer = Debouncer(),
        super(const _Initial()) {
    loader = Overloading.instance.overLayEntry();
    on<_GetBookNew>(_getBookNew);
    on<_RefreshBooks>(_refreshBooks);
    on<_Invalidate>(_invalidate);
    on<_GetScrollController>(_initScrollController);
    // on<_GetImagePokemon>(_getImagePokemon);
    on<_Search>(_search);
    on<_GetBookSearh>(_getBookSerch);
  }

  late ScrollController scrollController;
  int limit = 20;
  int offset = 0;

  Future<void> refreshList() async {
    add(const _RefreshBooks());
  }

  Future<void> _refreshBooks(
      _RefreshBooks event, Emitter<HomeState> emit) async {
    add(const _GetBookNew());
  }

  void _invalidate(_Invalidate event, Emitter<HomeState> emit) {
    emit(state.copyWith(failure: null));
  }

  void _initScrollController(
      _GetScrollController event, Emitter<HomeState> emit) {
    scrollController = ScrollController();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
              scrollController.position.maxScrollExtent &&
          !state.isDone) {
        emit(state.copyWith(isDone: true));
        add(const _GetBookNew());
      }
    });
  }

  Future<void> _getBookNew(_GetBookNew event, Emitter<HomeState> emit) async {
    offset++;
    emit(state.copyWith(isLoading: true));
    final either = await _homeUseCase.getBookNew();
    switch (either) {
      case Left(value: Failure failure):
        emit(state.copyWith(failure: failure, isLoading: false, isDone: false));
      case Right(value: List<BookEntity> books):
        emit(state.copyWith(books: []));
        emit(state.copyWith(books: books, isLoading: false, isDone: false));
    }
  }

  Future<void> _getBookSerch(
      _GetBookSearh event, Emitter<HomeState> emit) async {
    offset++;

    // final historyList = state.historyList.toList();

    // final isExist = historyList
    //     .firstWhere((element) => element == event.search)
    //     .contains(event.search);

    // if (!isExist) {
    //   if (state.historyList.length <= 5) {
    //     historyList.add(event.search);
    //   } else {
    //     historyList.add(event.search);
    //     historyList.removeAt(0);
    //   }
    // }

    // if (!isExist && state.historyList.length >= 5) {
    //   state.historyList[0] = event.search;
    // } else {
    //   if (!isExist || state.historyList.length <= 5) {
    //     historyList.add(event.search);
    //   }
    // }

    emit(state.copyWith(
      isLoading: true, /* historyList: historyList */
    ));
    final either = await _homeUseCase.getBookSearch(event.search);
    switch (either) {
      case Left(value: Failure failure):
        emit(state.copyWith(failure: failure, isLoading: false));
      case Right(value: List<BookEntity> books):
        // emit(state.copyWith(books: []));
        debugPrint('searchBooks: ${books.length}');
        emit(state.copyWith(searchBooks: books, isLoading: false));
    }
  }

  Future<void> _search(_Search event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    debouncer.execute(() async {
      if (event.search == '') {
        emit(state.copyWith(
          searchBooks: [],
          isLoading: false,
        ));
      } else {
        add(_GetBookSearh(search: event.search));
        // final filter = state.books
        //     .where((element) =>
        //         element.name!.toLowerCase().contains(event.search!.toLowerCase()))
        //     .toList();
        // emit(state.copyWith(books: filter, isLoading: false));
      }
    });
  }
}

class Debouncer {
  Timer? timer;

  Future<void> execute(VoidCallback action) async {
    timer?.cancel();
    timer = Timer(const Duration(milliseconds: 500), action);
  }
}
