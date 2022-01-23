import '../../../../../patas_exports.dart';

abstract class IUpdateLostDatasource {
  Future<SuccessResponse> call({required UpdateLostModel updateLostModel});
}
