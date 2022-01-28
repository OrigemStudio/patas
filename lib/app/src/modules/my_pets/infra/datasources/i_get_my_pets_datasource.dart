import '../../../../../../patas_exports.dart';

abstract class IGetMyPetsDatasource {
  Future<MyPetsModel> call({required String tutorId});
}
