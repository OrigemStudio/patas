import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

class UpdateAdoptionRepositoryImpl extends IUpdateAdoptionRepository {
  final IUpdateAdoptionDatasource _datasource;

  UpdateAdoptionRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, SuccessResponse>> call(
      {required UpdateAdoptionEntity updateAdoptionEntity}) async {
    try {
      return right(await _datasource.call(
          updateAdoptionModel: updateAdoptionEntity.toModel));
    } on Failure catch (error) {
      return left(error);
    }
  }
}
