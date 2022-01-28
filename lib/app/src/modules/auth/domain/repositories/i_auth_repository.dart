import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthorizedEntity>> call({required AuthEntity entity});
}
