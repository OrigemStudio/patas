import 'package:dartz/dartz.dart';

import '../../../../../patas_exports.dart';

class GetPetRepositoryImpl extends IGetPetRepository {
  final IGetPetDatasource _datasource;

  GetPetRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, PetEntity>> call({required String petId}) async {
    try {
      return right(await _datasource.call(petId: petId));
    } on Failure catch (error) {
      return left(error);
    }
  }
}
