import 'package:flutter/material.dart';
import 'package:patas/patas_exports.dart';
import 'package:reactive_forms/reactive_forms.dart';

class UiField extends StatelessWidget {
  final String field;
  final String label;
  final Widget? icon;
  final Widget? prefix;
  final Widget? suffix;
  const UiField(
      {Key? key,
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
        child: ReactiveTextField(
          formControlName: field,
          style: ThemeService.styles.caption(),
          decoration: InputDecoration(
              border: defautBorder,
              enabledBorder: defautBorder,
              focusedBorder: defautBorder,
              disabledBorder: defautBorder,
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: ThemeService.colors.danger)),
              labelText: label,
              labelStyle: ThemeService.styles.caption(),
              hintText: label,
              hintStyle: ThemeService.styles.caption(),
              errorStyle: ThemeService.styles.danger(),
              icon: icon,
              prefix: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: prefix,
              ),
              suffix: suffix),
        ),
      ),
    );
  }

  OutlineInputBorder get defautBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: ThemeService.colors.border));
}
