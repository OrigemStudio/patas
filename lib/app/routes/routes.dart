import 'package:flutter/material.dart';
import '../../patas_exports.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> call() {
    return <String, WidgetBuilder>{
      '/': (BuildContext context) => const HomePage(),
    };
  }
}
