import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/services.dart';

import '../../../../../../patas_exports.dart';

class GetTextInputFormatters {
  static List<TextInputFormatter> call(
    TextfieldType type,
  ) {
    switch (type) {
      case TextfieldType.phone:
        return [
          FilteringTextInputFormatter.digitsOnly,
          TelefoneInputFormatter(),
        ];

      case TextfieldType.addressCep:
        return [
          FilteringTextInputFormatter.digitsOnly,
          CepInputFormatter(ponto: false),
        ];

      case TextfieldType.cpf:
        return [
          FilteringTextInputFormatter.digitsOnly,
          CpfInputFormatter(),
        ];

      default:
        return [];
    }
  }
}
