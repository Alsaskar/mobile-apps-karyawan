import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pendonor_sukarela/const/icon/svg_file.dart';
import 'package:pendonor_sukarela/const/thema/color.dart';
import 'package:pendonor_sukarela/controller/controller_home.dart';
import 'package:pendonor_sukarela/widget/card.dart';
import 'package:pendonor_sukarela/widget/widget_appbar.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(393, 852));
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: background,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAppBar(context, 'Karyawan'),
              SizedBox(height: 26.h,),
              SizedBox(
                width: 1.sw,
                child: ListView.builder(
                    itemCount: 4,padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 5.h),
                        child: card(context,
                            width: 1.sw,
                            height: 115.h,
                            child: Row(
                              children: [
                                Image.asset(
                                  'lib/assets/images/billgates.jpg',
                                  width: 100.w,
                                  height: 87.h,
                                ),
                                SizedBox(
                                  width: 14.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    SizedBox(
                                      width: 221.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Bil Gates',
                                            style: GoogleFonts.inter(
                                                fontSize: 14.sp,
                                                color: primaryBlack,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Row(
                                            children: [
                                              iconEdit,
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              iconRemove
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'billgates@gmail.com',
                                      style: GoogleFonts.inter(
                                          fontSize: 11.sp,
                                          color: black700,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Text(
                                      'Paniki dua Jalan Manggis Raya',
                                      style: GoogleFonts.inter(
                                          fontSize: 11.sp,
                                          color: black700,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    SizedBox(
                                      width: 221.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            children: [
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  iconWhatsApp,
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text(
                                                    'Whatsapp',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 8.sp,
                                                        color: black700,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  iconCall,
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Text(
                                                    'Call',
                                                    style: GoogleFonts.inter(
                                                        fontSize: 8.sp,
                                                        color: black700,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'CEO Microsoft',
                                            style: GoogleFonts.inter(
                                                fontSize: 11.sp,
                                                color: primaryBlue,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      );
                    }),
              )
            ],
          ),
        );
      },
    );
  }
}
