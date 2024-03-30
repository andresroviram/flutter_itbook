import 'package:injectable/injectable.dart';

import '../../data/models/models.dart';
import '../entities/entities.dart';
import '../repository/login_repository.dart';

@lazySingleton
class LoginUseCase {
  LoginUseCase(this.loginRepository);
  final ILoginRepository loginRepository;

  Future<List<UserEntity>> readAll() async {
    return loginRepository.readAll();
  }

  Future<UserEntity?> findUserByName(String name) async {
    return loginRepository.findUserByName(name);
  }

  Future<int> insertUser(UserModel user) async {
    return loginRepository.insertUser(user);
  }
}
