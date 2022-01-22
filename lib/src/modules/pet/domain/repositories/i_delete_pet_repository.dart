import 'package:dartz/dartz.dart';
import '../../../../../patas_exports.dart';

abstract class IDeletePetRepository {
  Future<Either<Failure, SuccessResponse>> call({required String petId});
}
