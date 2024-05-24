import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../database/database_helper.dart';
import 'injectable_dependency.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureDependencies() async {
  getIt.init();
  final db = await $FloorDatabaseHelper.databaseBuilder('database.db').build();
  getIt.registerSingleton<DatabaseHelper>(db);
}
