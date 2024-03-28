import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/error.dart';
import '../../../domain/entities/entities.dart';
import '../../../domain/usecases/home_usecases.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final HomeUseCase _homeUseCase;
  DetailBloc({required HomeUseCase homeUseCase})
      : _homeUseCase = homeUseCase,
        super(DetailState.initial()) {
    on<_Detail>(_getDetail);
  }

  Future<void> _getDetail(_Detail event, Emitter<DetailState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      isbn13: event.isbn13,
    ));

    final either = await _homeUseCase.getBookDetail(event.isbn13);
    switch (either) {
      case Left(value: Failure failure):
        emit(state.copyWith(failure: failure, isLoading: false));
      case Right(value: BookEntity book):
        emit(state.copyWith(book: book, isLoading: false));
    }
  }
}
