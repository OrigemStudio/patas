import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:patas/app/_exports.dart';

abstract class SmartView<TBind extends Object> extends StatelessWidget {
  SmartView({Key? key}) : super(key: key);

  final TBind _scope = Modular.get<TBind>();
  final ThemeData _theme = Modular.get<ThemeService>().state;

  TBind get store => _scope;
  TBind get bloc => _scope;
  TBind get cubit => _scope;
  TBind get controller => _scope;
  TBind get form => _scope;
  ThemeData get theme => _theme;

  @override
  Widget build(BuildContext context);
}
