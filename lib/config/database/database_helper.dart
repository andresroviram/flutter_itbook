import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:floor/floor.dart';

import '../../modules/home/data/models/user.dart';
import 'user_dao.dart';

part 'database_helper.g.dart';

@Database(version: 1, entities: [User])
abstract class DatabaseHelper extends FloorDatabase {
  UserDao get userDao;
}
