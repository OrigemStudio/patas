import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../../patas_exports.dart';

class GetMyPetsDatasouceImpl extends IGetMyPetsDatasource {
  final IClientService _client;

  GetMyPetsDatasouceImpl(this._client);
  @override
  Future<MyPetsModel> call({required String tutorId}) async {
    try {
      final response = await _client.connect
          .query(GetMyPetsQuery.value, variables: {"tutor_id": tutorId});
      final json = response['data']['user'] as List;
      return json.isEmpty
          ? throw EmptyResponse(message: 'error')
          : MyPetsModel.fromJson(json[0]);
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(message: error.message);
    }
  }
}
