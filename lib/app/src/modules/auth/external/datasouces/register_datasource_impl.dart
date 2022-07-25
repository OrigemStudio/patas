import 'package:firebase_auth/firebase_auth.dart';
import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../../patas_exports.dart';

class RegisterDatasourceImpl extends IRegisterDatasouce {
  final FirebaseAuth _auth;
  final IClientService _client;

  RegisterDatasourceImpl(this._auth, this._client);

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
  Future<TutorModel> registerDb(RegisterModel model) async {
    try {
      final response = await _client.connect
          .mutation(AddUserMutation.value, variables: model.toJson());
      final json = response['data']['user'] as List;
      if (json.isEmpty) {
        throw EmptyResponse(message: 'error');
      } else {
        final user = TutorModel.fromJson(json.first);
        return user;
      }
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(
          message: error.message,
          statusCode: error.extensions?.code.toString());
    }
  }
}
