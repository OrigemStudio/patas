import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../patas_exports.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashCubit> {
  @override
  Widget build(BuildContext context) {
    return BaseListener<SplashCubit, bool>(
      bloc: controller,
      onError: (context, error) {
        return showAboutDialog(
            context: context, applicationName: error.message);
      },
      onLoading: (_) {
        return showAboutDialog(context: context, applicationName: 'loading');
      },
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () => controller.change(),
              child: const Text('success')),
          ElevatedButton(
              onPressed: () => controller.error(), child: const Text('error')),
          ElevatedButton(
              onPressed: () => controller.onInit(),
              child: const Text('loading')),
          BaseBuilder<SplashCubit, bool>(
              bloc: controller,
              onValue: (context, value) {
                return Text('$value');
              }),
        ],
      ),
    );
  }
}
