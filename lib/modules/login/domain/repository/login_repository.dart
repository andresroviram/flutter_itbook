import '../../data/models/models.dart';
import '../entities/entities.dart';

abstract class ILoginRepository {
  Future<List<UserEntity>> readAll();
  Future<UserEntity?> findUserByName(String name);
  Future<int> insertUser(UserModel user);
}
