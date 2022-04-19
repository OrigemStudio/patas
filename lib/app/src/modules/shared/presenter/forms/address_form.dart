
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../../patas_exports.dart';

class AddressForm {
  final form = FormGroup({
    'cep': FormControl<String>(value: '', validators: [Validators.required]),
    'street': FormControl<String>(value: '', validators: [Validators.required]),
    'number': FormControl<String>(value: '', validators: [Validators.required]),
    'neighborhood': FormControl<String>(
        value: '', validators: [Validators.required, Validators.minLength(6)]),
    'city': FormControl<String>(
        value: '', validators: [Validators.required, Validators.minLength(6)]),
    'uf': FormControl<String>(value: '', validators: [Validators.required]),
  });

  String get cep => form.control('cep').value;
  String get street => form.control('street').value;
  String get number => form.control('number').value;
  String get neighborhood => form.control('neighborhood').value;
  String get city => form.control('city').value;
  String get uf => form.control('uf').value;

  void showErrors() {
    form.markAllAsTouched();
    form.control('cep').markAsDirty();
    form.control('street').markAsDirty();
    form.control('number').markAsDirty();
    form.control('neighborhood').markAsDirty();
    form.control('city').markAsDirty();
    form.control('uf').markAsDirty();
  }
}

extension AddressFormToEntity on AddressForm {
  AddressEntity get toEntity => AddressEntity(
      cep: cep,
      street: street,
      number: number,
      neighborhood: neighborhood,
      city: city,
      uf: uf);
}
