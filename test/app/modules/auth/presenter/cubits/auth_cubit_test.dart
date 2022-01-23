import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:patas/patas_exports.dart';

import '../../../../../mocks.dart';

void main() {
  late IAuthUseCase _authUseCase;
  late ILogoutUseCase _logoutUseCase;
  late AuthForm _authForm;
  late AuthCubit _authCubit;
  setUp(() {
    _authForm = AuthForm();
    _authUseCase = AuthUseCaseMock();
    _logoutUseCase = LogoutUseCaseMock();
    _authCubit = AuthCubit(_authForm, _authUseCase, _logoutUseCase);
    registerFallbackValue(AuthEntityFake());
    registerFallbackValue(() {});
  });

  /*group('AuthCubit Tests - ', () {
    group('auth | ', () {
      test('when request AuthUseCase, should return no error', () async {
        when(() => _authUseCase.call(entity: any(named: 'entity')))
            .thenAnswer((_) async => right(const AuthorizedEntity()));
        await _authCubit.auth();
        expect(_authCubit.state, SuccessState(const AuthorizedEntity()));
      });

      test('when request AuthUseCase, should return error', () async {
        when(() => _authUseCase.call(entity: any(named: 'entity')))
            .thenAnswer((_) async => left(ErrorResponse()));
        await _authCubit.auth();
        expect(_authCubit.state, ErrorState);
      });
    });

    group('logout | ', () {
      test('when request AuthUseCase, should return AuthInit', () async {
        when(() => _logoutUseCase.call(toLogin: any(named: 'toLogin')))
            .thenAnswer((_) async => 'ok');
        await _authCubit.logout(() {});
        expect(_authCubit.state, isA<InitState>());
      });
    });
});*/
}
