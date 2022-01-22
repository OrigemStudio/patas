import 'package:dartz/dartz.dart';
import '../../../../../patas_exports.dart';

abstract class IGetPetRepository {
  Future<Either<Failure, PetEntity>> call({required String petId});
}
