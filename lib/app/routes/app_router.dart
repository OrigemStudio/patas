import 'package:flutter/material.dart';
import '../../patas_exports.dart';

class Route {
  final String pageView;
  final Object? arguments;

  Route(this.pageView, this.arguments);
}

class AppRouter {
  Map<String, Widget Function(BuildContext)> routes() {
    return <String, WidgetBuilder>{
      '/': (BuildContext context) => const HomePage(),
    };
  }

  GlobalKey<NavigatorState>? navigationKey;

  static AppRouter instance = AppRouter();

  AppRouter() {
    navigationKey = GlobalKey<NavigatorState>();
  }

  Future off(String pageView, {Object? arguments}) {
    return navigationKey!.currentState!
        .pushReplacementNamed(pageView, arguments: arguments);
  }

  Future to(String routeNamed, {Object? arguments}) {
    return navigationKey!.currentState!
        .pushNamed(routeNamed, arguments: arguments);
  }

  Future navigateToRoute(MaterialPageRoute _rn) {
    return navigationKey!.currentState!.push(_rn);
  }

  Future push(BuildContext context, Widget widget) async {
    return navigationKey!.currentState!
        .push(MaterialPageRoute(builder: (_) => widget));
  }

  Future pushMaterial(BuildContext context, material) async {
    return navigationKey!.currentState!.push(material);
  }

  Future pushAndRelaceToPage(BuildContext context, Widget widget) async {
    return navigationKey!.currentState!
        .pushReplacement(MaterialPageRoute(builder: (_) => widget));
  }

  pop() {
    return navigationKey!.currentState!.pop();
  }
}
