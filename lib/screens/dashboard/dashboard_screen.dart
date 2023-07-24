import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pendonor_sukarela/const/icon/svg_file.dart';
import 'package:pendonor_sukarela/const/thema/color.dart';
import 'package:pendonor_sukarela/controller/controller_dashboard.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(393, 852));
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        return Obx(
          () => Scaffold(
           body: controller.listScreen[controller.indexCurrent.value],
            bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.r),
          topRight: Radius.circular(8.r),
        ),
        child:Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: primaryBlue, // Warna latar belakang
                ),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: [
                    BottomNavigationBarItem(
                        label: '', icon: iconHomeOff, activeIcon: iconHome),
                    BottomNavigationBarItem(
                        label: '',
                        icon: iconJobDeskOff,
                        activeIcon: iconJobDesk),
                    BottomNavigationBarItem(
                        label: '',
                        icon: iconAbsensiOff,
                        activeIcon: iconAbsensi),
                    BottomNavigationBarItem(
                        label: '',
                        icon: iconProfileOff,
                        activeIcon: iconProfile),
                  ],
                  currentIndex: controller.indexCurrent.value,
                  onTap: (i) => controller.setIndexCurrent(i),
                  backgroundColor: primaryBlue,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
