import '../../../../../patas_exports.dart';

class AuthorizeModel extends AuthorizeEntity {
  const AuthorizeModel(
      {required String? email,
      required String? token,
      required String? refreshToken})
      : super(email: email, token: token, refreshToken: refreshToken);

  factory AuthorizeModel.fromJson(Map<String, dynamic> json) => AuthorizeModel(
      email: json['email'],
      token: json['token'],
      refreshToken: json['refresh-token']);

  @override
  List<Object?> get props => [email, token, refreshToken];

  @override
  bool? get stringify => true;
}

extension AuthorizeEntityToModel on AuthorizeEntity {
  AuthorizeModel get toModel =>
      AuthorizeModel(email: email, token: token, refreshToken: refreshToken);
}

extension AuthorizeModelToEntity on AuthorizeModel {
  AuthorizeEntity get toEntity =>
      AuthorizeEntity(email: email, token: token, refreshToken: refreshToken);
}
