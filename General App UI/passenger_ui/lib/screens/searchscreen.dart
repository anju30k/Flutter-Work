import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:passenger_ui/screens/navigatorbar.dart';
import 'package:sizer/sizer.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  TextEditingController searchname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: const MyBottomNavigatorBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/small.png",
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 10.h),
                    child: TextField(
                      controller: searchname,
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(65, 65, 65, 1),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w300),
                      decoration: InputDecoration(
                        hintText: " Abcdefghtikl",
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(
                            left: 2.w,
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 3.h,
                            color: Color.fromRGBO(65, 65, 65, 1),
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            searchname.clear();
                          },
                          icon: Icon(Icons.close, size: 3.h),
                          color: Color.fromRGBO(65, 65, 65, 1),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(65, 65, 65, 0.31)),
                          borderRadius: BorderRadius.circular(1.5.h),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(65, 65, 65, 0.31)),
                          borderRadius: BorderRadius.circular(1.5.h),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(65, 65, 65, 0.31)),
                          borderRadius: BorderRadius.circular(1.5.h),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
                child: Row(
                  children: [
                    Text(
                      "Results for ",
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(90, 90, 90, 1),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '"${searchname.text} "',
                      style: GoogleFonts.poppins(
                        color: Color.fromRGBO(210, 0, 0, 1),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "0 found",
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(210, 0, 0, 1),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                width: 80.w,
                height: 30.h,
                child: Image.asset(
                  "assets/No data-rafiki 1.png",
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                '''Waiting for new ride 
          request''',
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(42, 42, 42, 1),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                textAlign: TextAlign.center,
                '''Sorry, the keyword you entered cannot be
          found, please check again or search with 
          another keyword''',
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(137, 137, 137, 1),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                width: 70.w,
                height: 6.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.h),
                  color: Color.fromRGBO(208, 24, 32, 1),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Set Manually Location',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
