import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IGetAdoptionsRepository {
  Future<Either<Failure, AdoptionEntity>> call({required String tutorId});
}
