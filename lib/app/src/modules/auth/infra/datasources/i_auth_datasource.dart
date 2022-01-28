import '../../../../../../patas_exports.dart';

abstract class IAuthDatasouce {
  Future<AuthorizedModel> call(AuthModel model);
}
