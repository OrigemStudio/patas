import '../../../../../patas_exports.dart';

class AuthDatasourceImpl extends IAuthDatasouce {
  final IClientService _client;

  AuthDatasourceImpl(this._client);

  @override
  Future<AuthorizeModel> call(AuthModel model) async {
    final response = await _client.connect.query(GetUser.query);
    if (response['data'].isEmpty) {
      throw ErrorResponse(message: 'Erro na autentificação');
    } else {
      return AuthorizeModel.fromJson(response['data']);
    }
  }
}
