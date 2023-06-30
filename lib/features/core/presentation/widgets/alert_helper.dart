import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

class AlertHelper {
  static void showSnackBar(BuildContext context, {required String message}) {
    showFlash<FlashBar<dynamic>>(
      context: context,
      duration: const Duration(seconds: 2),
      builder: (context, controller) {
        return Flash<FlashBar>(
          controller: controller,
          position: FlashPosition.bottom,
          child: FlashBar(
            content: Text(message),
            controller: controller,
          ),
        );
      },
    );
  }
}
