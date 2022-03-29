import 'package:dartz/dartz.dart';

import '../../../../../../patas_exports.dart';

class RegisterRepositoryImpl extends IRegisterRepository {
  final IRegisterDatasouce _datasource;

  RegisterRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, AuthorizedEntity>> registerAuth(
      {required RegisterEntity entity}) async {
    try {
      final result = await _datasource.registerAuth(entity.toModel);
      return right(result.toEntity);
    } on ErrorResponse catch (error) {
      return left(error);
    }
  }

  @override
  Future<Either<Failure, TutorEntity>> registerDb(
      {required RegisterEntity entity}) async {
    try {
      final result = await _datasource.registerDb(entity.toModel);
      return right(result.toEntity);
    } on ErrorResponse catch (error) {
      return left(error);
    }
  }
}
