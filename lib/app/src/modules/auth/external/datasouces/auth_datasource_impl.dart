import 'package:firebase_auth/firebase_auth.dart';
import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../../patas_exports.dart';

class AuthDatasourceImpl extends IAuthDatasouce {
  final FirebaseAuth _auth;
  final IClientService _client;

  AuthDatasourceImpl(this._auth, this._client);

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
    } on FirebaseException catch (failure) {
      throw ErrorResponse(message: failure.message, statusCode: failure.code);
    }
  }

  @override
  Future<TutorModel> getUser(AuthorizedModel model) async {
    try {
      final response = await _client.connect
          .mutation(GetUserQuery.value, variables: {'id': model.uid});
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
