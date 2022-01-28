import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

class UpdateLostRepositoryImpl extends IUpdateLostRepository {
  final IUpdateLostDatasource _datasource;

  UpdateLostRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, SuccessResponse>> call(
      {required UpdateLostEntity updateLostEntity}) async {
    try {
      return right(
          await _datasource.call(updateLostModel: updateLostEntity.toModel));
    } on Failure catch (error) {
      return left(error);
    }
  }
}
