import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../patas_exports.dart';

class UpdateAdoptionDatasouceImpl extends IUpdateAdoptionDatasource {
  final IClientService _client;

  UpdateAdoptionDatasouceImpl(this._client);
  @override
  Future<SuccessResponse> call(
      {required UpdateAdoptionModel updateAdoptionModel}) async {
    try {
      final response = await _client.connect.query(UpdateAdoptionMutation.value,
          variables: updateAdoptionModel.toMap());
      final json = response['data']['update_pets'];
      return json == null
          ? throw EmptyResponse(message: 'error')
          : SuccessResponse();
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(message: error.message);
    }
  }
}
