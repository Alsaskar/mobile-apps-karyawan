import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "apps Karyawan",
      initialRoute: '/',
      onGenerateRoute: RouterGenerator.generatorRoute,
    ),
  );
}
