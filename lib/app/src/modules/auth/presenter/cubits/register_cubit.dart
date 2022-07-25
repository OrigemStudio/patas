import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../patas_exports.dart';

class RegisterCubit extends SmartCubit<AuthorizedEntity> {
  RegisterCubit(
      this.registerForm, this._registerAuthUseCase, this._registerDbUseCase)
      : super(InitState<AuthorizedEntity>(const AuthorizedEntity()));

  final RegisterForm registerForm;
  final IRegisterAuthUseCase _registerAuthUseCase;
  final IRegisterDbUseCase _registerDbUseCase;

  FormGroup get form => registerForm.form;

  Future<void> onSubmit() async {
    setSubmit(true);
    final result =
        await _registerAuthUseCase.call(entity: registerForm.toEntity);
    await result.fold((error) async => setError(error), (user) async {
      final resultDb =
          await _registerDbUseCase.call(entity: registerForm.toEntity);
      resultDb.fold(
          (error) => setError(error), ((r) => setSuccess(value: user)));
    });
  }
}
