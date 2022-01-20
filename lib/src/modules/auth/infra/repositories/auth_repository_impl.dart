import 'package:dartz/dartz.dart';

import '../../../../../patas_exports.dart';

class AuthRepositoryImpl extends IAuthRepository {
  final IAuthDatasouce _datasource;

  AuthRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, AuthorizedEntity>> call(
      {required AuthEntity entity}) async {
    try {
      final result = await _datasource.call(entity.toModel);
      return right(result.toEntity);
    } on ErrorResponse catch (error) {
      return left(error);
    }
  }
}
