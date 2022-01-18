import '../../../../../patas_exports.dart';

abstract class IAuthDatasouce {
  Future<UserModel> call(AuthModel model);
}
