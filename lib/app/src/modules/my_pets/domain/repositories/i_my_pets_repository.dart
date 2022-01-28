import 'package:dartz/dartz.dart';
import '../../../../../../patas_exports.dart';

abstract class IGetMyPetsRepository {
  Future<Either<Failure, MyPetsEntity>> call({required String tutorId});
}
