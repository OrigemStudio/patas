import '../../../../../../patas_exports.dart';

abstract class IUpdatePetDatasource {
  Future<SuccessResponse> call({required PetModel petModel});
}
