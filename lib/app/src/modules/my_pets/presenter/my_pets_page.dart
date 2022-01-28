import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patas/patas_exports.dart';

class MyPetsPage extends StatelessWidget {
  const MyPetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: SmartBuilder<MyPetsCubit, MyPetsEntity>(
        bloc: Modular.get<MyPetsCubit>(),
        onValue: (context, value, onSubmit) {
          return Wrap(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: value.pets?.length ?? 1,
                  itemBuilder: (_, i) => ListTile(
                        title: Text(value.pets?[i].name ?? ''),
                      ))
            ],
          );
        },
        onLoading: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        onError: (context, error) {
          return Center(
            child: Text(error.message ?? ''),
          );
        },
      ),
    );
  }
}
