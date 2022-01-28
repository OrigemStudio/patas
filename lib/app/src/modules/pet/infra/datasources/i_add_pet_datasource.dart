import '../../../../../../patas_exports.dart';

abstract class IAddPetDatasource {
  Future<SuccessResponse> call({required PetModel petModel});
}
