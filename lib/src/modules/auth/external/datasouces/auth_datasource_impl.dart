import '../../../../../patas_exports.dart';

class AuthDatasourceImpl extends IAuthDatasouce {
  final IClientService _api;

  AuthDatasourceImpl(this._api);

  @override
  Future<UserModel> call(AuthModel model) async {
    //final response = await _api.get(
    //    apiRequest: AuthRequests.getUser(AuthModel.toMap(model)));
    //if (response.hasError) {
    //  throw ErrorResponse('', '');
    //} else {
    //  return UserModel.fromJson(response.body);
    //}
    return const UserModel(email: '', token: '', refreshToken: '');
  }
}
