import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IUpdateLostRepository {
  Future<Either<Failure, SuccessResponse>> call(
      {required UpdateLostEntity updateLostEntity});
}
