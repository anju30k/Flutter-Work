import 'dart:developer';
import 'package:assignment_50walletui/screens/account.dart';
import 'package:assignment_50walletui/screens/createaccs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nocontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
        centerTitle: true,
        title: Image.asset(
          "assets/images/Group 4 (1).png",
          height: 24,
          width: 88,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 45),
            Center(child: Image.asset("assets/images/Group 10.png")),
            const SizedBox(height: 85),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your \nmobile number",
                        style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 21)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Mobile number",
                        style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      IntlPhoneField(
                        flagsButtonPadding: const EdgeInsets.only(left: 8),
                        inputFormatters: [
                          FilteringTextInputFormatter
                              .digitsOnly, // Allow only digits
                        ],
                        controller: nocontroller,
                        dropdownIcon:
                            const Icon(Icons.arrow_drop_down_outlined),
                        dropdownIconPosition: IconPosition.trailing,
                        decoration: InputDecoration(
                          hintText: "7X-XXXXXXX",
                          counterText: '',
                          enabled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(225, 227, 237, 1))),
                          hintStyle: GoogleFonts.sora(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color.fromRGBO(186, 194, 199, 1))),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          log(phone.completeNumber);
                        },
                        validator: (value) {
                          if (value == null || value.number.trim().isEmpty) {
                            return 'Please enter your phone number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 40),
                      Container(
                        height: 45,
                        width: 360,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color.fromRGBO(87, 50, 191, 1)),
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromRGBO(87, 50, 191, 1))),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Account()));
                              nocontroller.clear();
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content:
                                    Text('Please enter a valid phone number.'),
                              ));
                            }
                          },
                          child: Text(
                            'Continue',
                            style: GoogleFonts.sora(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromRGBO(255, 255, 255, 1))),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an Account? ",
                            style: GoogleFonts.sora(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 12)),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateAccount()));
                            },
                            child: Text(
                              "Login",
                              style: GoogleFonts.sora(
                                  color: const Color.fromRGBO(29, 98, 202, 1),
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12)),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 110,
                            height: 1,
                            color: const Color.fromRGBO(237, 239, 246, 1),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'or continue using',
                            style: GoogleFonts.sora(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(120, 131, 141, 1))),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 110,
                            height: 1,
                            color: const Color.fromRGBO(237, 239, 246, 1),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/Frame 5.png"),
                          Image.asset("assets/images/Frame 6.png"),
                          Image.asset("assets/images/Frame 7.png"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
