import 'package:reactive_forms/reactive_forms.dart';

class RegisterForm {
  final form = FormGroup({
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
    'password': FormControl<String>(
        value: '', validators: [Validators.required, Validators.minLength(6)]),
  });

  String get email => form.control('email').value;
  String get password => form.control('email').value;
}
