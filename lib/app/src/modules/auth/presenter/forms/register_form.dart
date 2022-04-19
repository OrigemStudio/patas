import 'package:patas/app/_exports.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegisterForm {
  final AddressForm addressForm;
  RegisterForm(this.addressForm);
  final form = FormGroup({
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
    'phone': FormControl<String>(value: '', validators: [Validators.required]),
    'name': FormControl<String>(value: '', validators: [Validators.required]),
    'password': FormControl<String>(
        value: '', validators: [Validators.required, Validators.minLength(6)]),
    'password_confirmation': FormControl<String>(
        value: '', validators: [Validators.required, Validators.minLength(6)]),
    'show_password': FormControl<bool>(value: true),
    'show_password_confirmation': FormControl<bool>(value: true),
    'address': AddressForm().form
  }, validators: [
    MustMatchPassword.call('password', 'password_confirmation')
  ]);

  String get email => form.control('email').value;
  String get phone => form.control('phone').value;
  String get name => form.control('name').value;
  String get password => form.control('password').value;
  String get passwordConfirmation =>
      form.control('password_confirmation').value;

  bool get showPassword => form.control('show_password').value;
  bool get showPasswordConfirmation =>
      form.control('show_password_confirmation').value;
  void setShowPassword() => form.control('show_password').value = !showPassword;
  void setShowPasswordConfirmation() =>
      form.control('show_password_confirmation').value =
          !showPasswordConfirmation;

  void showErrors() {
    form.markAllAsTouched();
    form.control('email').markAsDirty();
    form.control('phone').markAsDirty();
    form.control('name').markAsDirty();
    form.control('password').markAsDirty();
    form.control('passwordConfirmation').markAsDirty();
    addressForm.showErrors();
  }
}

extension RegisterFormToEntity on RegisterForm {
  RegisterEntity get toEntity => RegisterEntity(
        email: email,
        phone: phone,
        name: name,
        password: password,
        address: addressForm.toEntity,
      );
}
