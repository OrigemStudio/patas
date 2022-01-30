import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../../../../patas_exports.dart';

class FindCubit extends SmartCubit<String> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? barCode;
  QRViewController? qrController;
  FindCubit() : super(InitState<String>(''));

  void findWithQRCode({required String code}) {
    setSuccess(value: code);
  }

  void findWithNfc() async {
    //bool isAvailable = await NfcManager.instance.isAvailable();

    NfcManager.instance.startSession(
      onDiscovered: (NfcTag tag) async {
        if (kDebugMode) {
          print(tag.data);
        }
        setSuccess(value: tag.data[0]);
      },
    );
    NfcManager.instance.stopSession();
  }
}
