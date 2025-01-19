import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Mydrawerscreen extends StatefulWidget {
  const Mydrawerscreen({super.key});

  @override
  State createState() => _Mydrawerscreen();
}

class _Mydrawerscreen extends State {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20.w),
        bottomRight: Radius.circular(20.w),
      ),
      child: Drawer(
        width: 65.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.w, top: 5.h),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 2.h,
                    ),
                  ),
                  SizedBox(width: 2.w),
                  Text(
                    "Back",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Stack(children: [
              Image.asset(
                "assets/Vector 42.png",
              ),
              Positioned(
                left: 18.5.w,
                top: 0.5.h,
                child: Image.asset(
                  "assets/Frame 39356.png",
                  width: 35.w,
                  height: 12.h,
                ),
              ),
              Positioned(
                left: 5.w,
                top: -1.h,
                child: Image.asset(
                  "assets/Ellipse 43 (1).png",
                  height: 15.h,
                  width: 15.w,
                ),
              ),
              Positioned(
                left: 16.w,
                height: 17.5.h,
                child: Image.asset(
                  "assets/Edit Image.png",
                  height: 4.5.h,
                  width: 4.5.w,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w, top: 11.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sohil Sardar",
                      style: GoogleFonts.poppins(
                          fontSize: 20.sp, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "0000000000",
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(65, 65, 65, 0.72),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "sohil@email.con",
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(65, 65, 65, 0.72),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ]),
            SizedBox(height: 2.h),
            Row(
              children: [
                SizedBox(width: 5.w),
                Icon(
                  Icons.person_2_outlined,
                  size: 2.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  "Profile",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Divider(),
            SizedBox(height: 1.h),
            Row(
              children: [
                SizedBox(width: 5.w),
                Icon(
                  Icons.groups_outlined,
                  size: 2.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  "My Benefits",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Divider(),
            SizedBox(height: 1.h),
            Row(
              children: [
                SizedBox(width: 5.w),
                Icon(
                  Icons.error_outline,
                  size: 2.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  "How it works",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Divider(),
            SizedBox(height: 1.h),
            Row(
              children: [
                SizedBox(width: 5.w),
                Icon(
                  Icons.percent_outlined,
                  size: 2.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  "Refer & Earn",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Divider(),
            SizedBox(height: 1.h),
            Row(
              children: [
                SizedBox(width: 5.w),
                Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 2.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  "My Wallet",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Divider(),
            SizedBox(height: 1.h),
            Row(
              children: [
                SizedBox(width: 5.w),
                Icon(
                  Icons.receipt_outlined,
                  size: 2.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  "Ride History",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Divider(),
            SizedBox(height: 1.h),
            Row(
              children: [
                SizedBox(width: 5.w),
                Icon(
                  Icons.settings_outlined,
                  size: 2.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  "Settings",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 1.h),
            Divider(),
            SizedBox(height: 1.h),
            Row(
              children: [
                SizedBox(width: 5.w),
                Icon(
                  Icons.logout,
                  size: 2.h,
                ),
                SizedBox(width: 2.w),
                Text(
                  "Logout",
                  style: GoogleFonts.poppins(
                      fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/Vector 42.png",
            ),
          ],
        ),
      ),
    );
  }
}
