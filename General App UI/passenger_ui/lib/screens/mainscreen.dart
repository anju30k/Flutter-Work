import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passenger_ui/screens/drawerscreen.dart';
import 'package:passenger_ui/screens/navigatorbar.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      drawer: Mydrawerscreen(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/Rectangle 3430.png",
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, left: 4.w, right: 4.w),
                  child: Row(
                    children: [
                      Builder(
                        builder: (context) {
                          return GestureDetector(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Image.asset(
                              "assets/tabler_menu-3.png",
                              height: 8.h,
                              width: 8.w,
                            ),
                          );
                        },
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 2.5.h,
                        backgroundImage: AssetImage(
                          "assets/image.png",
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      CircleAvatar(
                        radius: 2.5.h,
                        backgroundImage: AssetImage("assets/sos 1.png"),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 17.5.h, left: 4.w, right: 4.w),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 0,
                            offset: Offset(0, 4.05),
                            blurRadius: 4.05,
                            color: Color.fromRGBO(255, 247, 247, 1))
                      ],
                      border: Border.all(
                        color: Color.fromRGBO(123, 123, 123, 1),
                      ),
                      borderRadius: BorderRadius.circular(1.5.h),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(123, 123, 123, 1),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            hintText: "From",
                            prefixIcon: Icon(
                              Icons.my_location_rounded,
                              color: Color.fromRGBO(123, 123, 123, 1),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(1.5.h),
                                topRight: Radius.circular(1.5.h),
                                bottomLeft: Radius.zero,
                                bottomRight: Radius.zero,
                              ),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        TextField(
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(123, 123, 123, 1),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                          decoration: InputDecoration(
                            hintText: "Where To",
                            prefixIcon: Icon(
                              Icons.location_on,
                              color: Color.fromRGBO(123, 123, 123, 1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.zero,
                                topRight: Radius.zero,
                                bottomLeft: Radius.circular(1.5.h),
                                bottomRight: Radius.circular(1.5.h),
                              ),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w, top: 2.5.h, right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Recent places",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(90, 90, 90, 1),
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.5.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Office",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(90, 90, 90, 1),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              "2972 Westheimer Rd. Santa Ana, Illinois 85486 ",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(184, 184, 184, 1),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 2.w),
                        child: Text(
                          "2.7km",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(90, 90, 90, 1),
                              fontSize: 14.5.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.5.w,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shopping center",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(90, 90, 90, 1),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              "4140 Parker Rd. Allentown, New Mexico 31134  ",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(184, 184, 184, 1),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 2.w),
                        child: Text(
                          "4.9km",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(90, 90, 90, 1),
                              fontSize: 14.5.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Image.asset("assets/Group 1000003208.png")
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNavigatorBar(),
    );
  }
}
