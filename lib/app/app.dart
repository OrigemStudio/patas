import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../patas_exports.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patas App',
      theme: ThemeData(primarySwatch: Colors.blue),
    ).modular();
  }
}
