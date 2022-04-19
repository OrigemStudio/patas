import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../patas_exports.dart';

class ValidationMessages {
  ValidationMessages({
    this.emptyArrayLabel,
    this.maxLengthLabel,
    this.maxNumber,
    this.minLengthLabel,
    this.minNumber,
    this.patternLabel,
    this.requiredLabel,
  });

  String? requiredLabel;
  String? minLengthLabel;
  String? maxLengthLabel;
  String? patternLabel;
  String? emptyArrayLabel;
  String? minNumber;
  String? maxNumber;

  Map<String, String> call(dynamic) => {
        ConstantsValidators.REQUIRED:
            requiredLabel ?? 'Esse campo deve ser preenchido',
        ConstantsValidators.MIN_LENGTH: minLengthLabel ??
            'O campo deve ter no minimo ${minNumber ?? '3'} caracteres',
        ConstantsValidators.MAX_LENGTH: maxLengthLabel ??
            'O campo deve ter no máximo ${maxNumber ?? '100'} caracteres',
        ConstantsValidators.PATTERN:
            patternLabel ?? 'O campo está com o formato incorreto',
        ConstantsValidators.ZERO:
            emptyArrayLabel ?? 'O campo deve ter no minimo 1 item adicionado',
        ConstantsValidators.WRONG_FORMMATING:
            patternLabel ?? 'O campo está com o formato incorreto',
        ConstantsValidators.SPECIAL_CHARACTER:
            emptyArrayLabel ?? 'Não utilize caracteres especiais',
         ConstantsValidators.MUST_MATCH:
            emptyArrayLabel ?? 'As senhas não conferem',
      };

  List<Map<String, dynamic>? Function(AbstractControl<dynamic>)> validations() {
    final listRequired =
        <Map<String, dynamic>? Function(AbstractControl<dynamic>)>[];
    if (requiredLabel != null) {
      listRequired.add(Validators.required);
    }
    if (minLengthLabel != null) {
      listRequired.add(Validators.minLength(int.parse(minLengthLabel ?? '0')));
    }
    if (maxLengthLabel != null) {
      listRequired.add(Validators.maxLength(int.parse(maxLengthLabel ?? '0')));
    }
    if (patternLabel != null) {
      listRequired.add(Validators.pattern(patternLabel ?? ''));
    }
    if (emptyArrayLabel != null) {
      listRequired.add(Validators.required);
    }
    if (minNumber != null) {
      listRequired.add(Validators.min(minNumber ?? ''));
    }
    if (maxNumber != null) {
      listRequired.add(Validators.max(maxNumber ?? ''));
    }

    return listRequired;
  }
}
