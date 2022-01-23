import 'package:dartz/dartz.dart';
import '../../../../../patas_exports.dart';

abstract class IUpdateAdoptionRepository {
  Future<Either<Failure, SuccessResponse>> call(
      {required UpdateAdoptionEntity updateAdoptionEntity});
}
