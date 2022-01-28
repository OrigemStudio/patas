import 'package:hasura_connect/hasura_connect.dart';

import '../../../../../../patas_exports.dart';

class GetAdoptionsDatasouceImpl extends IGetAdoptionsDatasource {
  final IClientService _client;

  GetAdoptionsDatasouceImpl(this._client);
  @override
  Future<AdoptionModel> call({required String tutorId}) async {
    try {
      final response = await _client.connect.query(GetAdoptionsQuery.value);
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
        return AdoptionModel(myPets: myPets, pets: pets);
      }
    } on HasuraRequestError catch (error) {
      throw ErrorResponse(message: error.message);
    }
  }
}
