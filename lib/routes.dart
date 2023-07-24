import 'package:flutter/material.dart';
import 'package:pendonor_sukarela/screens/dashboard/dashboard_screen.dart';

class RouterGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => DashboardScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Halaman Tidak Ditemukan")),
        body: Center(
          child: Text("Halaman Tidak Ditemukan"),
        ),
      );
    });
  }
}
