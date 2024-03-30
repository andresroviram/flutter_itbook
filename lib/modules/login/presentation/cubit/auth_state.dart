part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    @Default(false) bool success,
    @Default(false) bool error,
    @Default('') String message,
  }) = _Initial;
}
