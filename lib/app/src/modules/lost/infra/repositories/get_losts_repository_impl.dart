import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

class GetLostsRepositoryImpl extends IGetLostsRepository {
  final IGetLostsDatasource _datasource;

  GetLostsRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, LostEntity>> call({required String tutorId}) async {
    try {
      return right(await _datasource.call(tutorId: tutorId));
    } on Failure catch (error) {
      return left(error);
    }
  }
}
