import 'package:flutter/material.dart';
import 'package:pendonor_sukarela/routes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pendonor Sukarela",
      initialRoute: '/',
      onGenerateRoute: RouterGenerator.generatorRoute,
    ),
  );
}
