import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../patas_exports.dart';

class UpdatePetDatasouceImpl extends IUpdatePetDatasource {
  final IClientService _client;

  UpdatePetDatasouceImpl(this._client);
  @override
  Future<SuccessResponse> call({required PetModel petModel}) async {
    try {
      final response = await _client.connect
          .query(UpdatePetQuery.value, variables: petModel.toJson());
      final json = response['data']['update_pets'];
      return json == null
          ? throw EmptyResponse(message: 'error')
          : SuccessResponse();
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(message: error.message);
    }
  }
}
