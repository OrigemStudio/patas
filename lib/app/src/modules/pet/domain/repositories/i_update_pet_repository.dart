import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IUpdatePetRepository {
  Future<Either<Failure, SuccessResponse>> call({required PetEntity petEntity});
}
