import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

class GetAdoptionsRepositoryImpl extends IGetAdoptionsRepository {
  final IGetAdoptionsDatasource _datasource;

  GetAdoptionsRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, AdoptionEntity>> call(
      {required String tutorId}) async {
    try {
      return right(await _datasource.call(tutorId: tutorId));
    } on Failure catch (error) {
      return left(error);
    }
  }
}
