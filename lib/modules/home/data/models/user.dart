import 'package:floor/floor.dart';

@entity
class User {
  @PrimaryKey(autoGenerate: true)
  final int? id;
  final String name;
  final String password;
  User({
    this.id,
    required this.name,
    required this.password,
  });
}
