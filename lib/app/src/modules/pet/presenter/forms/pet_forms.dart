import 'package:reactive_forms/reactive_forms.dart';

class PetForms {
  final form = FormGroup({
    'id': FormControl<String>(value: '', validators: [Validators.required]),
    'name': FormControl<String>(value: '', validators: [Validators.required]),
    'sex': FormControl<String>(value: '', validators: [Validators.required]),
    'birth_date': FormControl<DateTime>(
        value: DateTime.now(), validators: [Validators.required]),
    'breed': FormControl<String>(value: '', validators: [Validators.required]),
    'photos':
        FormControl<List<String>>(value: [], validators: [Validators.required]),
  });

  String get name => form.control('name').value;
  String get sex => form.control('sex').value;
  String get birth_date => form.control('birth_date').value;
  String get breed => form.control('breed').value;
  List<String> get photos => form.control('photos').value;
}
