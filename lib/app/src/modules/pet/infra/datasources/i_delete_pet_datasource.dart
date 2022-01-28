import '../../../../../../patas_exports.dart';

abstract class IDeletePetDatasource {
  Future<SuccessResponse> call({required String petId});
}
