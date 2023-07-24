import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pendonor_sukarela/screens/home/home_screen.dart';

class DashboardController extends GetxController {
  RxInt indexCurrent = 0.obs;

  RxList<Widget> listScreen = [
    HomePage(),
    Center(
      child: Text('2'),
    ),
    Center(
      child: Text('3'),
    ),
    Center(
      child: Text('4'),
    ),
  ].obs;

  Future setIndexCurrent(int i) async {
    indexCurrent.value = i;
  }
}
