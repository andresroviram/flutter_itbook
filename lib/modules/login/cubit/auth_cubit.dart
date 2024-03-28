import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../config/database/database_manager.dart';
import '../../../core/services/local_storage.dart';
import '../../home/data/models/user.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  late final DatabaseManager _localDatabase;
  final LocalStorage _localStorage;

  AuthCubit({
    required DatabaseManager localDatabase,
    required LocalStorage localStorage,
  })  : _localStorage = localStorage,
        _localDatabase = localDatabase,
        super(const _Initial());

  void invalidate() {
    emit(state.copyWith(error: false));
  }

  Future<String> getUserName() async {
    return await _localStorage.getUserLoginUserName();
  }

  Future<String> getPassword() async {
    return await _localStorage.getUserLoginPass();
  }

  Future<void> createUser(String username, String password) async {
    if (!validate(username, password)) {
      emit(state.copyWith(
        error: true,
        message: 'get_into'.tr(),
      ));
    } else {
      List<User>? users = await _localDatabase.state?.userDao.readAll();
      final user = users?.firstWhere((element) => element.name == username,
          orElse: () => User(name: '', password: ''));
      if ((user?.name.isNotEmpty ?? false) &&
          (user?.password.isNotEmpty ?? false)) {
        emit(state.copyWith(error: true, message: 'existing_user'.tr()));
        return;
      } else {
        User user = User(name: username, password: password);
        final id = await _localDatabase.state?.userDao.insertUser(user);
        user = User(name: username, password: password, id: id);
        emit(state.copyWith(error: true, message: 'create_user'.tr()));
      }
    }
  }

  Future<void> login(String username, String password) async {
    if (!validate(username, password)) {
      emit(state.copyWith(
        error: true,
        message: 'get_into'.tr(),
      ));
      return;
    }
    List<User>? users = await _localDatabase.state?.userDao.readAll();
    final user = users?.firstWhere((element) => element.name == username,
        orElse: () => User(name: '', password: ''));
    if ((user?.name.isEmpty ?? false) && (user?.password.isEmpty ?? false)) {
      emit(state.copyWith(error: true, message: 'not_found_user'.tr()));
      return;
    }
    if (user?.password == password) {
      _localStorage.saveUserLoginUserName(username);
      _localStorage.saveUserLoginPass(password);
      emit(state.copyWith(success: true));
    } else {
      emit(state.copyWith(error: true, message: 'invalid_credentials'.tr()));
    }
  }

  bool validate(String username, String password) {
    if (username.isNotEmpty && password.isNotEmpty) {
      return true;
    }
    return false;
  }
}
