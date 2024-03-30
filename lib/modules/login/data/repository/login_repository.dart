import 'package:injectable/injectable.dart';

import '../../../../config/database/database_helper.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repository/login_repository.dart';
import '../datasources/remote/login_datasources.dart';
import '../models/models.dart';

@Injectable(as: ILoginRepository)
class LoginRepositoryImpl implements ILoginRepository {
  LoginRepositoryImpl(this.loginDatasource, this.localDatabase);
  final ILoginDatasource loginDatasource;
  final DatabaseHelper localDatabase;

  @override
  Future<UserEntity?> findUserByName(String name) async {
    final UserModel? user = await localDatabase.userDao.findUserByName(name);
    return user?.toEntitie();
  }

  @override
  Future<List<UserEntity>> readAll() async {
    final List<UserModel> users = await localDatabase.userDao.readAll();
    return users.map((e) => e.toEntitie()).toList();
  }

  @override
  Future<int> insertUser(UserModel user) async {
    return await localDatabase.userDao.insertUser(user);
  }
}
