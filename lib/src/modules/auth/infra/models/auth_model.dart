import '../../../../../patas_exports.dart';

class AuthModel extends AuthEntity {
  const AuthModel({required String email, required String password})
      : super(email: email, password: password);

  static Map<String, dynamic> toMap(AuthEntity entity) {
    return {"email": entity.email, "password": entity.password};
  }

  @override
  List<Object?> get props => [email, password];

  @override
  bool? get stringify => true;
}

extension AuthEntityToModel on AuthEntity {
  AuthModel get toModel => AuthModel(email: email, password: password);
}

extension AuthModelToEntity on AuthModel {
  AuthEntity get toEntity => AuthEntity(email: email, password: password);
}
