import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patas/app/_exports.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddressPage extends SmartView<AddressForm> {
  final Widget button;
  final FormGroup formGroup;
  AddressPage({Key? key, required this.button, required this.formGroup})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BackButton(
            onPressed: () => Modular.to.pop(),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                const Logo(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: AddressFields(
                        formGroup: formGroup,
                      ),
                    ),
                  ],
                ),
                button
              ],
            ),
          ),
        ],
      ),
    );
  }
}
