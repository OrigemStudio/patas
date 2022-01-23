import 'package:dartz/dartz.dart';
import '../../../../../patas_exports.dart';

abstract class IUpdatePhotosRepository {
  Future<Either<Failure, SuccessResponse>> call(
      {required String petId, required List<String> photos});
}
