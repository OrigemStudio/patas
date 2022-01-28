import '../../../../../../patas_exports.dart';

abstract class IGetPetDatasource {
  Future<PetModel> call({required String petId});
}
