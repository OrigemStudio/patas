import 'package:dartz/dartz.dart';

import '../../../../../patas_exports.dart';

abstract class IAuthUseCase {
  Future<Either<Failure, AuthorizedEntity>> call({required AuthEntity entity});
}

class AuthUseCase extends IAuthUseCase {
  final IStorageService _storage;
  final IAuthRepository _repository;

  AuthUseCase(this._storage, this._repository);
  @override
  Future<Either<Failure, AuthorizedEntity>> call(
      {required AuthEntity entity}) async {
    final result = await _repository.call(entity: entity);
    return result.fold((error) {
      return left(error);
    }, (result) {
      _storage.setRegistration(email: entity.email);
      _storage.setPassword(password: entity.password);
      return right(result);
    });
  }
}
