import 'package:flutter/material.dart';
import 'package:pendonor_sukarela/screens/TelusuriPendonor/maps.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telusuri Pendonor"),
        backgroundColor: Color(0xFFFF2323),
      ),
      body: Maps(),
    );
  }
}
