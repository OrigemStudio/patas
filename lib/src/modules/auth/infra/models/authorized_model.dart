import '../../../../../patas_exports.dart';

class AuthorizedModel extends AuthorizedEntity {
  const AuthorizedModel(
      {required String? email,
      required String? token,
      required String? refreshToken})
      : super(email: email, token: token, refreshToken: refreshToken);

  factory AuthorizedModel.fromJson(Map<String, dynamic> json) =>
      AuthorizedModel(
          email: json['email'],
          token: json['token'],
          refreshToken: json['refresh-token']);

  @override
  List<Object?> get props => [email, token, refreshToken];

  @override
  bool? get stringify => true;
}

extension AuthorizedEntityToModel on AuthorizedEntity {
  AuthorizedModel get toModel =>
      AuthorizedModel(email: email, token: token, refreshToken: refreshToken);
}

extension AuthorizedModelToEntity on AuthorizedModel {
  AuthorizedEntity get toEntity =>
      AuthorizedEntity(email: email, token: token, refreshToken: refreshToken);
}
