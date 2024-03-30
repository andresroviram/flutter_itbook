import 'package:floor/floor.dart';

import '../../../models/models.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM User')
  Future<List<UserModel>> readAll();

  @Query('SELECT * FROM User WHERE id = :id')
  Stream<UserModel?> findUserById(int id);

  @Query('SELECT * FROM User WHERE name = :name')
  Future<UserModel?> findUserByName(String name);

  @insert
  Future<int> insertUser(UserModel user);

  @update
  Future<void> updateUser(UserModel user);

  @delete
  Future<void> deleteUser(UserModel user);
}
