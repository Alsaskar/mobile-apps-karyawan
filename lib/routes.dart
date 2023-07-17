import 'package:flutter/material.dart';
import 'package:pendonor_sukarela/screens/HomeScreen/main.dart';
import 'package:pendonor_sukarela/screens/LoginPendonor/main.dart';
import 'package:pendonor_sukarela/screens/Pendonor.Dashboard/main.dart';
import 'package:pendonor_sukarela/screens/TelusuriPendonor/main.dart';

class RouterGenerator {
  static Route<dynamic> generatorRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/telusuri':
        return MaterialPageRoute(builder: (_) => TelusuriPendonor());
      case '/loginPendonor':
        return MaterialPageRoute(builder: (_) => LoginPendonor());
      case '/dashboardPendonor':
        return MaterialPageRoute(builder: (_) => DashboardPendonor());
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
