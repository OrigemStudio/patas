import '../../../../../patas_exports.dart';

abstract class IGetLostsDatasource {
  Future<LostModel> call({required String tutorId});
}
