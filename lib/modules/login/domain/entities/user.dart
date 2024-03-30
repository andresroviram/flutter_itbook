part of 'entities.dart';

class UserEntity extends Equatable {
  final int? id;
  final String name;
  final String password;
  const UserEntity({
    this.id,
    required this.name,
    required this.password,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        password,
      ];
  factory UserEntity.fromEntity(UserModel entity) {
    return UserEntity(
      id: entity.id,
      name: entity.name,
      password: entity.password,
    );
  }
}
