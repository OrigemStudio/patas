import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../patas_exports.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  _FindPageState createState() => _FindPageState();
}

class _FindPageState extends ModularState<FindPage, FindCubit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SmartListener<FindCubit, String>(
        bloc: cubit,
        onValue: (_, code) => Modular.to.navigate(AppRoutes.petId(id: code)),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: IconButton(
                  onPressed: () => showDialog(
                      context: context, builder: (_) => const QrDialog()),
                  icon: const Icon(Icons.qr_code)),
            ),
            const Expanded(
              flex: 1,
              child: Text('Get QRCode'),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    cubit.qrController?.dispose();
    super.dispose();
  }
}
