import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IUpdatePhotosUseCase {
  Future<Either<Failure, SuccessResponse>> call(
      {required String petId, required List<String> photos});
}

class UpdatePhotosUseCaseImpl extends IUpdatePhotosUseCase {
  final IUpdatePhotosRepository _repository;

  UpdatePhotosUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, SuccessResponse>> call(
          {required String petId, required List<String> photos}) async =>
      _repository.call(petId: petId, photos: photos);
}
