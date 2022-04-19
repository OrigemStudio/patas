import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import '../../../../../patas_exports.dart';

class UiField extends StatelessWidget {
  const UiField({
    Key? key,
    required this.labelText,
    this.prefix,
    this.suffix,
    this.hintText,
    this.obscureText,
    this.controller,
    required this.formControlName,
    this.passwordsMatch,
    this.autovalidateMode,
    this.validationMessages,
    this.padding,
    required this.type,
    this.helperText,
  }) : super(key: key);

  final String? labelText;
  final Widget? prefix;
  final String? hintText;
  final Widget? suffix;
  final bool? obscureText;
  final TextEditingController? controller;
  final String formControlName;
  final bool? passwordsMatch;
  final AutovalidateMode? autovalidateMode;
  final Map<String, String> Function(FormControl<dynamic>)? validationMessages;
  final TextfieldType type;
  final EdgeInsets? padding;
  final String? helperText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ReactiveTextField(
      formControlName: formControlName,
      validationMessages: ValidationMessages().call,
      controller: controller,
      style: theme.textTheme.caption?.copyWith(
        fontSize: 14,
        color: theme.colorScheme.primary,
      ),
      obscureText: obscureText ?? false,
      cursorColor: Colors.black,
      cursorWidth: 1,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
        helperStyle: theme.textTheme.caption,
        errorStyle: const TextStyle(height: 0),
        prefixIcon: prefix,
        suffixIcon: suffix,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.colorScheme.secondary,
            width: 2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.colorScheme.error,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.colorScheme.tertiary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.colorScheme.error,
            width: 2,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: theme.colorScheme.tertiary,
            width: 2,
          ),
        ),
        labelText: labelText,
        hintText: labelText,
        labelStyle: theme.textTheme.caption?.copyWith(
          fontSize: 14,
          color: theme.colorScheme.primary,
        ),
        floatingLabelStyle: theme.textTheme.headline2?.copyWith(
          fontSize: 14,
          color: theme.colorScheme.primary,
        ),
      ),
      textInputAction: GetTextInputAction.call(type),
      inputFormatters: GetTextInputFormatters.call(type),
      keyboardType: GetTextInputType.call(type),
      showErrors: (control) => control.invalid && control.touched,
    );
  }
}
