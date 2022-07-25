import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

class AuthRepositoryImpl extends IAuthRepository {
  final IAuthDatasouce _datasource;

  AuthRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, AuthorizedEntity>> call(
      {required AuthEntity entity}) async {
    try {
      final result = await _datasource.call(entity.toModel);
      return right(result.toEntity);
    } on Failure catch (error) {
      return left(error);
    }
  }

  @override
  Future<Either<Failure, TutorEntity>> getUser({required AuthorizedEntity entity}) async{
    try {
      final result = await _datasource.getUser(entity.toModel);
      return right(result.toEntity);
    } on Failure catch (error) {
      return left(error);
    }
  }
}
