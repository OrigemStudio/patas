import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../../patas_exports.dart';

class GetPetDatasouceImpl extends IGetPetDatasource {
  final IClientService _client;

  GetPetDatasouceImpl(this._client);
  @override
  Future<PetModel> call({required String petId}) async {
    try {
      final response = await _client.connect
          .query(GetPetQuery.value, variables: {"pet_id": petId});
      final json = response['data']['pets'] as List;
      return json.isEmpty
          ? throw EmptyResponse(message: 'error')
          : PetModel.fromJson(json[0]);
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(message: error.message);
    }
  }
}
