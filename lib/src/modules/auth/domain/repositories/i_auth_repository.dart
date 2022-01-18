import 'package:dartz/dartz.dart';

import '../../../../../patas_exports.dart';

abstract class IAuthRepository {
  Future<Either<Failure, UserEntity>> call({required AuthEntity entity});
}
