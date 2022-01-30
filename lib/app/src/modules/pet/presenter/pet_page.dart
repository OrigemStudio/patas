import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patas/app/_exports.dart';

class PetPage extends StatefulWidget {
  final String petId;
  const PetPage({Key? key, required this.petId}) : super(key: key);

  @override
  _PetPageState createState() => _PetPageState();
}

class _PetPageState extends ModularState<PetPage, PetCubit> {
  @override
  void initState() {
    debugPrint(widget.petId);
    cubit.init(petId: widget.petId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SmartBuilder<PetCubit, PetEntity>(
      bloc: cubit,
      onLoading: (_) => const Center(child: CircularProgressIndicator()),
      onValue: (_, value, isSubmit) {
        return Center(child: Text(value.name ?? widget.petId));
      },
    ));
  }
}
