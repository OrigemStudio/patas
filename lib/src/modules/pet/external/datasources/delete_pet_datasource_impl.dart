import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../patas_exports.dart';

class DeletePetDatasouceImpl extends IDeletePetDatasource {
  final IClientService _client;

  DeletePetDatasouceImpl(this._client);
  @override
  Future<SuccessResponse> call({required String petId}) async {
    try {
      final response = await _client.connect
          .query(DeletePetQuery.value, variables: {"petId": petId});
      final json = response['data']['delete_pets'];
      return json == null
          ? throw EmptyResponse(message: 'error')
          : SuccessResponse();
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(message: error.message);
    }
  }
}
