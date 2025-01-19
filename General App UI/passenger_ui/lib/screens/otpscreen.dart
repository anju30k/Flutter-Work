import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:passenger_ui/screens/mainscreen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPScreenState extends StatefulWidget {
  const OTPScreenState();

  @override
  State<OTPScreenState> createState() => __OTPScreenStateState();
}

class __OTPScreenStateState extends State<OTPScreenState> {
  String otpValue = " ";
  Key parentKey = UniqueKey();

  void clearOtpFields() {
    setState(() {
      parentKey = UniqueKey();
      otpValue = " ";
    });
  }

  void verifyOtp(String otp) {
    log("Entered OTP: $otp");

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            Positioned(
              //top: -10.h,
              left: 0,
              right: 0,
              child: Image.asset(
                "assets/Vector 1.png",
                width: 100.w,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 14.h,
              left: 60.w,
              right: 5.w,
              child: Image.asset(
                "assets/Isolation_Mode.png",
                width: 8.w,
                height: 18.h,
              ),
            ),
            Positioned(
              top: 23.h,
              left: 28.w,
              right: 0.w,
              child: Image.asset(
                "assets/Media (14) 1.png",
                width: 50.w,
                height: 30.h,
              ),
            ),
            Positioned(
              top: 28.h,
              left: 15.w,
              child: Image.asset(
                "assets/Ellipse 9.png",
                width: 21.w,
              ),
            ),
            Positioned(
              top: 14.h,
              left: 17.w,
              child: Image.asset(
                "assets/Vector (2).png",
                width: 16.w,
              ),
            ),
            Positioned(
              bottom: 51.h,
              left: 7.w,
              child: Image.asset(
                "assets/Vector (1).png",
                height: 25.h,
              ),
            ),
            Positioned(
              top: 5.h,
              left: 17.5.w,
              child: Image.asset(
                "assets/Vector (3).png",
                height: 20.h,
              ),
            ),
            Positioned(
              bottom: 49.h,
              left: 3.w,
              child: Image.asset(
                "assets/Isolation_Mode.png",
                height: 15.h,
              ),
            ),
            Positioned(
              top: 56.h,
              left: 8.w,
              right: 8.w,
              child: Column(
                key: parentKey,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'OTP Verification',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to de',
                    textAlign: TextAlign.left,
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.sp,
                      color: Color.fromRGBO(0, 0, 0, 0.6),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: 3.h),
                  OtpTextField(
                    fieldWidth: 9.w,
                    fieldHeight: 8.h,
                    mainAxisAlignment: MainAxisAlignment.center,
                    numberOfFields: 6,
                    borderRadius: BorderRadius.circular(10),
                    borderColor: Color.fromRGBO(83, 66, 66, 0.24),
                    focusedBorderColor: Color.fromRGBO(22, 2, 3, 1),
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {
                      otpValue = code;
                    },
                    onSubmit: (String verificationCode) {
                      verifyOtp(verificationCode);
                      log("OTP is: $verificationCode");
                    },
                  ),
                  //SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "00:04",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          log("Resend OTP tapped");
                          clearOtpFields();
                        },
                        child: Text(
                          "Resend OTP?",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(208, 24, 32, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
