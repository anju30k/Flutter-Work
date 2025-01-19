import 'dart:developer';

import 'package:assignment_50walletui/screens/bottomsheetformail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

Future<dynamic> bottomSheetforphone(BuildContext context) async {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nocontroller = TextEditingController();
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
                  "Mobile number",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                IntlPhoneField(
                  flagsButtonPadding: const EdgeInsets.only(left: 8),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly, // Allow only digits
                  ],
                  controller: nocontroller,
                  dropdownIcon: const Icon(Icons.arrow_drop_down_outlined),
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
                        nocontroller.clear();
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
                      bottomSheetformail(context);
                    },
                    child: Text(
                      'Use email instead',
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
