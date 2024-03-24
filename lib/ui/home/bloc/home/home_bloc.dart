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
        emit(state.copyWith(
          books: books,
          isLoading: false,
          isDone: false,
          searchBooks: [],
        ));
    }
  }

  Future<void> _getBookSerch(
      _GetBookSearh event, Emitter<HomeState> emit) async {
    final historyList = state.historyList.toList();
    final newList = <String>[];

    final isExist = historyList.contains(event.search);

    if (!isExist) {
      if (state.historyList.length < 5) {
        newList.insert(0, event.search);
        newList.addAll(historyList);
      } else {
        newList.insert(0, event.search);
        historyList.removeLast();
        newList.addAll(historyList);
      }
    }

    emit(state.copyWith(
      isLoading: true,
      historyList: newList,
    ));

    final either = await _homeUseCase.getBookSearch(event.search);
    switch (either) {
      case Left(value: Failure failure):
        emit(state.copyWith(failure: failure, isLoading: false));
      case Right(value: List<BookEntity> books):
        emit(state.copyWith(searchBooks: books, isLoading: false));
    }
  }

  Future<void> _search(_Search event, Emitter<HomeState> emit) async {
    debouncer.execute(() {
      if (event.search.isNotEmpty) {
        add(_GetBookSearh(search: event.search));
      } else {
        add(const _GetBookNew());
      }
    });
  }
}

class Debouncer {
  Timer? timer;

  void execute(VoidCallback action) {
    timer?.cancel();
    timer = Timer(const Duration(milliseconds: 500), action);
  }
}
