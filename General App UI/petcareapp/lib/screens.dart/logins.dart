import 'package:assignment_47petcareapp/screens.dart/dashboards.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text("Login",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Color.fromRGBO(245, 146, 69, 1)))),
            ),
            Center(
              child: Image.asset(
                "assets/images/Brandmark Logo.png",
                height: 195,
                width: 154,
              ),
            ),
            Text("Email",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.2)))),
            const SizedBox(height: 8),
            SizedBox(
              height: 36,
              width: 327,
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(250, 200, 162, 1))),
                  enabled: true,
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(250, 200, 162, 1))),
                  hintText: "PetGuardian@gmail.com",
                  hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(194, 195, 204, 1))),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text("Label",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromRGBO(0, 0, 0, 0.2)))),
            const SizedBox(height: 8),
            SizedBox(
              height: 36,
              width: 327,
              child: TextFormField(
                obscureText: true,
                controller: passController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.visibility_off_outlined,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(250, 200, 162, 1))),
                  enabled: true,
                  enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(250, 200, 162, 1))),
                  hintText: "*******",
                  hintStyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(194, 195, 204, 1))),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Forgot Password ?",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(31, 32, 41, 1)))),
                Text(" Click Here",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromRGBO(31, 32, 41, 1)))),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 35,
              width: 327,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashBoard()));
                },
                child: Text("LOGIN",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1)))),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 1,
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 35,
              width: 327,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {},
                child: Text("LOGIN WITH EMAIL",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1)))),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 35,
              width: 327,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {},
                child: Text("LOGIN WITH FACEBOOK",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 1)))),
              ),
            ),
            const Spacer(),
            Center(
              child: Text(
                  "By continue you agree to our \n Terms & Privacy Policy?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromRGBO(31, 32, 41, 1)))),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
