import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pendonor_sukarela/const/thema/color.dart';

Widget card(BuildContext context,{ double? width, double? height, Widget? child}) {
  ScreenUtil.init(context, designSize: const Size(393, 852));
  return Container(
    padding: EdgeInsets.all(14.sp),
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: primaryWhite,
      borderRadius: BorderRadius.circular(16.r),
      boxShadow: [
        BoxShadow(
            offset: Offset(
              0,
              4,
            ),
            blurRadius: 4,
            color: blue010),
               BoxShadow(
            offset: Offset(
              0,
              -2,
            ),
            blurRadius: 4,
            color: primaryWhite)
      ],
    ),
    child: child,
  );
}
