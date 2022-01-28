import '../../../../../../patas_exports.dart';

abstract class IUpdateAdoptionDatasource {
  Future<SuccessResponse> call(
      {required UpdateAdoptionModel updateAdoptionModel});
}
