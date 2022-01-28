import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../../patas_exports.dart';

class UpdateLostDatasouceImpl extends IUpdateLostDatasource {
  final IClientService _client;

  UpdateLostDatasouceImpl(this._client);
  @override
  Future<SuccessResponse> call(
      {required UpdateLostModel updateLostModel}) async {
    try {
      final response = await _client.connect
          .query(UpdateLostMutation.value, variables: updateLostModel.toMap());
      final json = response['data']['update_pets'];
      return json == null
          ? throw EmptyResponse(message: 'error')
          : SuccessResponse();
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(message: error.message);
    }
  }
}
