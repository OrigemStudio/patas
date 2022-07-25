import '../../../../../../patas_exports.dart';

abstract class IAuthDatasouce {
  Future<AuthorizedModel> call(AuthModel model);
  Future<TutorModel> getUser(AuthorizedModel model);
}
