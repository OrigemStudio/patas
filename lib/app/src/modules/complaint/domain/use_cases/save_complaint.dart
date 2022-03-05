import 'package:dartz/dartz.dart';
import 'package:patas/app/_exports.dart';

abstract class ISaveComplaintUseCase {
  Future<Either<Failure, SuccessResponse>> call(
      {required ComplaintEntity complaint});
}

class SaveComplaintUseCaseImpl extends ISaveComplaintUseCase {
  final ISaveComplaintRepository _repository;

  SaveComplaintUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, SuccessResponse>> call(
      {required ComplaintEntity complaint}) async {
    // TODO: implement call
    throw UnimplementedError();
  }
}
