import '../../../../../patas_exports.dart';

class UserModel extends UserEntity {
  const UserModel(
      {required String? id,
      required String? email,
      required String? name,
      required String? phone})
      : super(id: id, name: name, email: email, phone: phone);

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone']);

  @override
  List<Object?> get props => [id, name, email, phone];

  @override
  bool? get stringify => true;
}

extension UserEntityToModel on UserEntity {
  UserModel get toModel =>
      UserModel(id: id, name: name, email: email, phone: phone);
}

extension UserModelToEntity on UserModel {
  UserEntity get toEntity =>
      UserEntity(id: id, name: name, email: email, phone: phone);
}
