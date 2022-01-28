import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

class GetMyPetsRepositoryImpl extends IGetMyPetsRepository {
  final IGetMyPetsDatasource _datasource;

  GetMyPetsRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, MyPetsEntity>> call({required String tutorId}) async {
    try {
      return right(await _datasource.call(tutorId: tutorId));
    } on Failure catch (error) {
      return left(error);
    }
  }
}
