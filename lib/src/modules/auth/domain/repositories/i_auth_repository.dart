import 'package:dartz/dartz.dart';

import '../../../../../patas_exports.dart';

abstract class IAuthRepository {
  Future<Either<Failure, AuthorizeEntity>> call({required AuthEntity entity});
}
