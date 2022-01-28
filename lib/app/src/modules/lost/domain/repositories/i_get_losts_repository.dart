import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IGetLostsRepository {
  Future<Either<Failure, LostEntity>> call({required String tutorId});
}
