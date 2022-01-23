import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../patas_exports.dart';

class UpdatePhotosDatasouceImpl extends IUpdatePhotosDatasource {
  final IClientService _client;

  UpdatePhotosDatasouceImpl(this._client);
  @override
  Future<SuccessResponse> call(
      {required String petId, required List<String> photos}) async {
    try {
      final response = await _client.connect.query(UpdatePhotosMutation.value,
          variables: {'pet_id': petId, 'photos': photos.toString()});
      final json = response['data']['update_pets'];
      return json == null
          ? throw EmptyResponse(message: 'error')
          : SuccessResponse();
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(message: error.message);
    }
  }
}
