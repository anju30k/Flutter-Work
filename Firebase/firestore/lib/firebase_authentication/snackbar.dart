import 'package:flutter/material.dart';

class CustomSnackBar {
  static showCustomSnackbar(
      {required String message, required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
      backgroundColor: Colors.white,
    ));
  }
}
