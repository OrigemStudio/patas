import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../patas_exports.dart';

class UiField extends SmartView {
  final String field;
  final String label;
  final Widget? icon;
  final Widget? prefix;
  final Widget? suffix;

  UiField({Key? key,
    required this.field,
    required this.label,
    this.icon,
    this.suffix,
    this.prefix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Semantics(
        label: label,
        child: Theme(
          data: Theme.of(context),
          child: ReactiveTextField(
            formControlName: field,
            style: theme.textTheme.caption,
            decoration: InputDecoration(
                labelText: label,
                hintText: label,
                icon: icon,
                prefix: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: prefix,
                ),
                suffix: suffix),
          ),
        ),
      ),
    );
  }
}
