import 'package:flutter_bloc/flutter_bloc.dart';

import 'database_helper.dart';

class DatabaseManager extends Cubit<DatabaseHelper?> {
  DatabaseManager() : super(null);

  Future<void> init() async {
    final db =
        await $FloorDatabaseHelper.databaseBuilder('database.db').build();
    emit(db);
  }
}
