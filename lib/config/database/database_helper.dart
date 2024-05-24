import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:floor/floor.dart';

import '../../modules/login/data/models/models.dart';
import '../../modules/login/data/datasources/local/DAO/user_dao.dart';

part 'database_helper.g.dart';

@Database(version: 1, entities: [UserModel])
abstract class DatabaseHelper extends FloorDatabase {
  UserDao get userDao;
}
