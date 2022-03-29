import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

abstract class IRegisterRepository {
  Future<Either<Failure, AuthorizedEntity>> registerAuth(
      {required RegisterEntity entity});
  Future<Either<Failure, TutorEntity>> registerDb(
      {required RegisterEntity entity});
}
