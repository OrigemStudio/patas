import '../../../../../patas_exports.dart';

abstract class IGetAdoptionsDatasource {
  Future<AdoptionModel> call({required String tutorId});
}
