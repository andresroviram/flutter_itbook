import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/common/database/database_manager.dart';
import '../../../core/home/data/models/user.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.db}) : super(const _Initial());
  late DatabaseManager db;

  void invalidate() {
    emit(state.copyWith(error: false));
  }

  Future<void> createUser(String username, String password) async {
    if (!validate(username, password)) {
      emit(state.copyWith(
        error: true,
        message: "Get into: Username*, Password*",
      ));
    } else {
      List<User>? users = await db.state?.userDao.readAll();
      final user = users?.firstWhere((element) => element.name == username,
          orElse: () => User(name: '', password: ''));
      if ((user?.name.isNotEmpty ?? false) &&
          (user?.password.isNotEmpty ?? false)) {
        emit(state.copyWith(error: true, message: "Existing User"));
        return;
      } else {
        User user = User(name: username, password: password);
        final id = await db.state?.userDao.insertUser(user);
        user = User(name: username, password: password, id: id);
        emit(state.copyWith(error: true, message: "Created User"));
      }
    }
  }

  Future<void> login(String username, String password) async {
    if (!validate(username, password)) {
      emit(state.copyWith(
        error: true,
        message: "Get into: Username*, Password*",
      ));
      return;
    }
    List<User>? users = await db.state?.userDao.readAll();
    final user = users?.firstWhere((element) => element.name == username,
        orElse: () => User(name: '', password: ''));
    if ((user?.name.isEmpty ?? false) && (user?.password.isEmpty ?? false)) {
      emit(state.copyWith(error: true, message: "User Not found"));
      return;
    }
    if (user?.password == password) {
      emit(state.copyWith(success: true));
    } else {
      emit(state.copyWith(error: true, message: "Invalid credentials"));
    }
  }

  bool validate(String username, String password) {
    if (username.isNotEmpty && password.isNotEmpty) {
      return true;
    }
    return false;
  }
}
