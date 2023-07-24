import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pendonor_sukarela/const/thema/color.dart';
import 'package:pendonor_sukarela/const/thema/text.dart';

Widget buildAppBar(BuildContext context, String text) {
  ScreenUtil.init(context, designSize: const Size(393, 852));
  return Column(
    children: [
      Container(
          height: 80.h,
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: textAppBar(text)),
      SizedBox(
        height: 18.h,
      ),
      Container(
        width: 1.sw,
        height: 2.5.h,
        color: blue500,
      )
    ],
  );
}
