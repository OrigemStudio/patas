import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

class DeletePetRepositoryImpl extends IDeletePetRepository {
  final IDeletePetDatasource _datasource;

  DeletePetRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, SuccessResponse>> call({required String petId}) async {
    try {
      return right(await _datasource.call(petId: petId));
    } on Failure catch (error) {
      return left(error);
    }
  }
}
