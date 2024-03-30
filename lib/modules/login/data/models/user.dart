part of 'models.dart';

@Entity(tableName: 'User', primaryKeys: ['id'])
class UserModel extends UserEntity {
  const UserModel({
    super.id,
    required super.name,
    required super.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      password: json['password'] ?? '',
    );
  }
}

extension BookMapper on UserModel {
  UserEntity toEntitie() {
    return UserEntity(
      id: id,
      name: name,
      password: password,
    );
  }
}
