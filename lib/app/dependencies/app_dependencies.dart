import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../patas_exports.dart';

class AppDependecies extends StatelessWidget {
  final Environment env;
  final Widget child;
  const AppDependecies({Key? key, required this.child, required this.env})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => ConfigsService(env: env)),
      ],
      child: child,
    );
  }
}
