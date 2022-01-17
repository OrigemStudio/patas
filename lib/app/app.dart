import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patas App',
      theme: ThemeData(primarySwatch: Colors.blue),
    ).modular();
  }
}
