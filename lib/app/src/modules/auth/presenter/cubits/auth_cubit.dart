import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../patas_exports.dart';

class AuthCubit extends SmartCubit<AuthorizedEntity> {
  AuthCubit(this.authForm, this._authUseCase, this._logoutUseCase)
      : super(InitState<AuthorizedEntity>(const AuthorizedEntity()));

  final AuthForm authForm;
  final IAuthUseCase _authUseCase;
  final ILogoutUseCase _logoutUseCase;

  FormGroup get form => authForm.form;

  Future<void> auth() async {
    setSubmit(true);
    final result = await _authUseCase.call(
        entity: AuthEntity(email: authForm.email, password: authForm.password));
    result.fold((error) => setError(error), (user) => setSuccess(value: user));
  }

  Future<void> logout(Function toLogin) async {
    _logoutUseCase.call(toLogin: toLogin);
    setInit(value: const AuthorizedEntity());
  }
}
