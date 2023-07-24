import 'package:flutter/material.dart';

ToastMessage(BuildContext context, String message, Color color) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 2),
    content: Text(message),
    backgroundColor: color,
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);

  return;
}
