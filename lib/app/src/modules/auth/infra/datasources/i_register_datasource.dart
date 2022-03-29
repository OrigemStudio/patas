import '../../../../../../patas_exports.dart';

abstract class IRegisterDatasouce {
  Future<AuthorizedModel> registerAuth(RegisterModel model);
  Future<TutorModel> registerDb(RegisterModel model);
}
