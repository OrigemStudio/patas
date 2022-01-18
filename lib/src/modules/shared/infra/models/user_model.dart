import '../../../../../patas_exports.dart';

class UserModel extends UserEntity {
  const UserModel(
      {required String? email,
      required String? token,
      required String? refreshToken})
      : super(email: email, token: token, refreshToken: refreshToken);

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      email: json['email'],
      token: json['token'],
      refreshToken: json['refresh-token']);

  @override
  List<Object?> get props => [email, token, refreshToken];

  @override
  bool? get stringify => true;
}

extension UserEntityToModel on UserEntity {
  UserModel get toModel =>
      UserModel(email: email, token: token, refreshToken: refreshToken);
}

extension UserModelToEntity on UserModel {
  UserEntity get toEntity =>
      UserEntity(email: email, token: token, refreshToken: refreshToken);
}
