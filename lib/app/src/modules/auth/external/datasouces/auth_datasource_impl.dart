import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../../patas_exports.dart';

class AuthDatasourceImpl extends IAuthDatasouce {
  final FirebaseAuth _auth;

  AuthDatasourceImpl(this._auth);

  @override
  Future<AuthorizedModel> call(AuthModel model) async {

    final response = await _auth.signInWithEmailAndPassword(
        email: model.email, password: model.password);
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: model.email, password: model.password);
      return AuthorizedModel(
          email: response.user?.email,
          token: await response.user?.getIdToken(),
          uid: response.user?.uid);
    } on FirebaseAuthException catch (failure) {
      throw ErrorResponse(message: failure.message, statusCode: failure.code);
    }
  }
}
