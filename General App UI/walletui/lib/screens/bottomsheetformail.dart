import 'package:assignment_50walletui/screens/bottomsheetforphone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future<dynamic> bottomSheetformail(BuildContext context) async {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16),
        topRight: Radius.circular(16),
      )),
      isDismissible: false,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Forgot your password?",
                      style: GoogleFonts.sora(
                        color: const Color.fromRGBO(25, 25, 25, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Done",
                        style: GoogleFonts.sora(
                          color: const Color.fromRGBO(29, 98, 202, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "Email",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "e.g. email@example.com",
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(191, 189, 189, 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(191, 189, 189, 1))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(191, 189, 189, 1))),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(191, 189, 189, 1))),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your EmailID';
                    }
                    if (value.trim() == '@gmail.com') {
                      return 'Please enter your EmailId properly';
                    }
                    if (!value.endsWith("@gmail.com")) {
                      return 'Please enter your proper EmailID which contains @gmail';
                    }
                    if (value.contains(' ')) {
                      return 'Please avoid spaces';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
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
                      bool loginValidated = formKey.currentState!.validate();
                      if (loginValidated) {
                        emailController.clear();
                        Navigator.pop(context);
                      }
                    },
                    child: Text(
                      'Send reset link',
                      style: GoogleFonts.sora(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromRGBO(255, 255, 255, 1))),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Future.delayed(const Duration(milliseconds: 200), () {
                        bottomSheetforphone(context);
                      });
                    },
                    child: Text(
                      'Use mobile instead',
                      style: GoogleFonts.sora(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromRGBO(29, 98, 202, 1))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        );
      });
}
