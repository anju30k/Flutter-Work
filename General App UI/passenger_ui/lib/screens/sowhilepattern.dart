import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:passenger_ui/screens/otpscreen.dart';
import 'package:sizer/sizer.dart';

class Sowhilepattern extends StatefulWidget {
  const Sowhilepattern({super.key});

  @override
  _SowhilepatternState createState() => _SowhilepatternState();
}

class _SowhilepatternState extends State<Sowhilepattern> {
  TextEditingController nocontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(children: [
              Positioned(
                //top: -2.h,
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
                top: 55.h,
                left: 6.w,
                right: 6.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign In',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      width: 100.w,
                      child: TextFormField(
                        controller: nocontroller,
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          //enabled: true,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 1.3.h),
                          hintText: "Mobile Number",
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          counterText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.h),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 0, 0, 0.24),
                            ),
                          ),
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.h),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 0, 0, 0.24),
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.h),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 0, 0, 0.24),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.h),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(0, 0, 0, 0.24),
                            ),
                          ),
                          prefixText: "+ 91  ",
                          prefixStyle: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 2.w),
                            child: Icon(
                              Icons.phone,
                              color: Color.fromRGBO(250, 199, 199, 1),
                              size: 19.sp,
                            ),
                          ),
                          alignLabelWithHint: true,
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        onChanged: (phone) {
                          log(phone);
                        },
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return '';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      width: 100.w,
                      height: 6.5.h,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            spreadRadius: 1,
                            offset: Offset(3, -2),
                            color: Color.fromRGBO(243, 181, 181, 1),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(2.h),
                        color: Color.fromRGBO(208, 24, 32, 1), // Button color
                      ),
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OTPScreenState(),
                              ),
                            );
                            nocontroller.clear();
                          } else {
                            log("onclick");
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Please enter a valid phone number.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                backgroundColor: Colors.redAccent,
                                behavior: SnackBarBehavior.floating,
                                padding: EdgeInsets.symmetric(
                                  vertical: 1.h,
                                  horizontal: 2.w,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                duration: const Duration(seconds: 3),
                              ),
                            );
                          }
                        },
                        child: Center(
                          child: Text(
                            'Sign In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Privacy Policy',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.red,
                              fontSize: 16.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(208, 24, 32, 1),
                            ),
                          ),
                          SizedBox(
                            height: 0.7.h,
                          ),
                          Text(
                            'If you are sign in privacy policy accepted',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
