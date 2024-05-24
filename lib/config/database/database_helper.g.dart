// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_helper.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $DatabaseHelperBuilderContract {
  /// Adds migrations to the builder.
  $DatabaseHelperBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $DatabaseHelperBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<DatabaseHelper> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorDatabaseHelper {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $DatabaseHelperBuilderContract databaseBuilder(String name) =>
      _$DatabaseHelperBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $DatabaseHelperBuilderContract inMemoryDatabaseBuilder() =>
      _$DatabaseHelperBuilder(null);
}

class _$DatabaseHelperBuilder implements $DatabaseHelperBuilderContract {
  _$DatabaseHelperBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $DatabaseHelperBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $DatabaseHelperBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<DatabaseHelper> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$DatabaseHelper();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$DatabaseHelper extends DatabaseHelper {
  _$DatabaseHelper([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  UserDao? _userDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `User` (`id` INTEGER, `name` TEXT NOT NULL, `password` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  UserDao get userDao {
    return _userDaoInstance ??= _$UserDao(database, changeListener);
  }
}

class _$UserDao extends UserDao {
  _$UserDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _userModelInsertionAdapter = InsertionAdapter(
            database,
            'User',
            (UserModel item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'password': item.password
                },
            changeListener),
        _userModelUpdateAdapter = UpdateAdapter(
            database,
            'User',
            ['id'],
            (UserModel item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'password': item.password
                },
            changeListener),
        _userModelDeletionAdapter = DeletionAdapter(
            database,
            'User',
            ['id'],
            (UserModel item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'password': item.password
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<UserModel> _userModelInsertionAdapter;

  final UpdateAdapter<UserModel> _userModelUpdateAdapter;

  final DeletionAdapter<UserModel> _userModelDeletionAdapter;

  @override
  Future<List<UserModel>> readAll() async {
    return _queryAdapter.queryList('SELECT * FROM User',
        mapper: (Map<String, Object?> row) => UserModel(
            id: row['id'] as int?,
            name: row['name'] as String,
            password: row['password'] as String));
  }

  @override
  Stream<UserModel?> findUserById(int id) {
    return _queryAdapter.queryStream('SELECT * FROM User WHERE id = ?1',
        mapper: (Map<String, Object?> row) => UserModel(
            id: row['id'] as int?,
            name: row['name'] as String,
            password: row['password'] as String),
        arguments: [id],
        queryableName: 'User',
        isView: false);
  }

  @override
  Future<UserModel?> findUserByName(String name) async {
    return _queryAdapter.query('SELECT * FROM User WHERE name = ?1',
        mapper: (Map<String, Object?> row) => UserModel(
            id: row['id'] as int?,
            name: row['name'] as String,
            password: row['password'] as String),
        arguments: [name]);
  }

  @override
  Future<int> insertUser(UserModel user) {
    return _userModelInsertionAdapter.insertAndReturnId(
        user, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateUser(UserModel user) async {
    await _userModelUpdateAdapter.update(user, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteUser(UserModel user) async {
    await _userModelDeletionAdapter.delete(user);
  }
}
