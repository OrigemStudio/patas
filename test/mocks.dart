import 'package:mocktail/mocktail.dart';
import 'package:patas/patas_exports.dart';

class ClientMock extends Mock implements IClientService {}

class StorageMock extends Mock implements IStorageService {}

class AuthEntityFake extends Fake implements AuthEntity {}

class AuthDatasouceMock extends Mock implements IAuthDatasouce {}

class AuthRepositoryMock extends Mock implements IAuthRepository {}

class AuthUseCaseMock extends Mock implements IAuthUseCase {}

class LogoutUseCaseMock extends Mock implements ILogoutUseCase {}

class Mocks {
  static AuthModel authModel =
      const AuthModel(email: '12345678', password: '12345678');
  static AuthModel authModelWithInvalidRegistration =
      const AuthModel(email: '12', password: '12345678');
  static AuthModel authModelWithInvalidPassword =
      const AuthModel(email: '12345678', password: '34');
  static AuthorizeModel authorizeModel =
      const AuthorizeModel(email: '12345678', token: '', refreshToken: '');
}
