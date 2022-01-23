import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../patas_exports.dart';

class AddPetDatasouceImpl extends IAddPetDatasource {
  final IClientService _client;

  AddPetDatasouceImpl(this._client);
  @override
  Future<SuccessResponse> call({required PetModel petModel}) async {
    try {
      final response = await _client.connect
          .query(AddPetMutation.value, variables: petModel.toMap());
      final json = response['data']['insert_pets'];
      return json == null
          ? throw EmptyResponse(message: 'error')
          : SuccessResponse();
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(message: error.message);
    }
  }
}
