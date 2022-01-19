import '../../../../../patas_exports.dart';

abstract class IAuthDatasouce {
  Future<AuthorizeModel> call(AuthModel model);
}
