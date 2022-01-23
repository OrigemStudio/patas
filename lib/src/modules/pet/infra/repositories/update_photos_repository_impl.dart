import 'package:dartz/dartz.dart';

import '../../../../../patas_exports.dart';

class UpdatePhotosRepositoryImpl extends IUpdatePhotosRepository {
  final IUpdatePhotosDatasource _datasource;

  UpdatePhotosRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, SuccessResponse>> call(
      {required String petId, required List<String> photos}) async {
    try {
      return right(await _datasource.call(petId: petId, photos: photos));
    } on Failure catch (error) {
      return left(error);
    }
  }
}
