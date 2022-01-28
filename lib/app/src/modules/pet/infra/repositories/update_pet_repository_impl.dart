import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

class UpdatePetRepositoryImpl extends IUpdatePetRepository {
  final IUpdatePetDatasource _datasource;

  UpdatePetRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, SuccessResponse>> call(
      {required PetEntity petEntity}) async {
    try {
      return right(await _datasource.call(petModel: petEntity.toModel));
    } on Failure catch (error) {
      return left(error);
    }
  }
}
