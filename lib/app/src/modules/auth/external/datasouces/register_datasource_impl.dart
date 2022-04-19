import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../../patas_exports.dart';

class RegisterDatasourceImpl extends IRegisterDatasouce {
  final FirebaseAuth _auth;
  final IClientService _clientService;

  RegisterDatasourceImpl(this._auth, this._clientService);

  @override
  Future<AuthorizedModel> registerAuth(RegisterModel model) async {
    try {
      final result = await _auth.createUserWithEmailAndPassword(
          email: model.email ?? '', password: model.password ?? '');
      final token = await result.user?.getIdToken();
      return AuthorizedModel(
          email: model.email, token: token, uid: result.user?.uid);
    } on FirebaseAuthException catch (failure) {
      throw ErrorResponse(message: failure.message, statusCode: failure.code);
    } on FirebaseException catch (failure) {
      throw ErrorResponse(message: failure.message, statusCode: failure.code);
    }
  }

  @override
  Future<TutorModel> registerDb(RegisterModel model) {
    // TODO: implement registerDb
    throw UnimplementedError();
  }
}
