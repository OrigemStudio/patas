import 'package:dartz/dartz.dart';
import '../../../../../patas_exports.dart';

abstract class IGetLostsUseCase {
  Future<Either<Failure, LostEntity>> call({required String tutorId});
}

class GetLostsUseCaseImpl extends IGetLostsUseCase {
  final IGetLostsRepository _repository;

  GetLostsUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, LostEntity>> call({required String tutorId}) async =>
      _repository.call(tutorId: tutorId);
}
