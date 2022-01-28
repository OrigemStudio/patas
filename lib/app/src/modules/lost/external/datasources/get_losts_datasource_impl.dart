import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../../patas_exports.dart';

class GetLostsDatasouceImpl extends IGetLostsDatasource {
  final IClientService _client;

  GetLostsDatasouceImpl(this._client);
  @override
  Future<LostModel> call({required String tutorId}) async {
    try {
      final response = await _client.connect.query(GetLostsQuery.value);
      final json = response['data']['pets'] as List;
      if (json.isEmpty) {
        throw EmptyResponse(message: 'error');
      } else {
        final myPets = <PetModel>[];
        final pets = <PetModel>[];
        for (final pet in json) {
          final petModel = PetModel.fromJson(pet);
          petModel.tutor?.id == tutorId
              ? myPets.add(petModel)
              : pets.add(petModel);
        }
        return LostModel(myPets: myPets, pets: pets);
      }
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(message: error.message);
    }
  }
}
