import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class CommonUtils {
  void displaySuccessMotionToast(BuildContext context) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      message: 'Login Successfull',
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.green,
    ).show(context);
  }
}
