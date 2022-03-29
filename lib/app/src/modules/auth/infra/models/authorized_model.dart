import '../../../../../../patas_exports.dart';

class AuthorizedModel extends AuthorizedEntity {
  const AuthorizedModel(
      {required String? email, required String? token, required String? uid})
      : super(email: email, token: token, uid: uid);

  factory AuthorizedModel.fromJson(Map<String, dynamic> json) =>
      AuthorizedModel(
          email: json['email'],
          token: json['token'],
          uid: json['refresh-token']);

  @override
  List<Object?> get props => [email, token, uid];

  @override
  bool? get stringify => true;
}

extension AuthorizedEntityToModel on AuthorizedEntity {
  AuthorizedModel get toModel =>
      AuthorizedModel(email: email, token: token, uid: uid);
}

extension AuthorizedModelToEntity on AuthorizedModel {
  AuthorizedEntity get toEntity =>
      AuthorizedEntity(email: email, token: token, uid: uid);
}
