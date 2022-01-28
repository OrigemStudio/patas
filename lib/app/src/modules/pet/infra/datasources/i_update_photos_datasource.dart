import '../../../../../../patas_exports.dart';

abstract class IUpdatePhotosDatasource {
  Future<SuccessResponse> call(
      {required String petId, required List<String> photos});
}
