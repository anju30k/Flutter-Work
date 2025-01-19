import 'package:assignment_50walletui/screens/bottomsheetformail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController passController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 15,
            color: Color.fromRGBO(29, 98, 202, 1),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              "Back",
              style: GoogleFonts.sora(
                  textStyle: const TextStyle(
                      color: Color.fromRGBO(29, 98, 202, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
            ),
          ),
          const SizedBox(width: 65),
          Image.asset(
            "assets/images/Group 4 (1).png",
            height: 24,
            width: 88,
          ),
          const SizedBox(
            width: 150,
          )
        ],
        backgroundColor: const Color.fromRGBO(247, 244, 255, 1),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 45),
              Center(child: Image.asset("assets/images/Group 9.png")),
              const SizedBox(height: 85),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enter your password",
                        style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 21)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Password",
                        style: GoogleFonts.sora(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        maxLength: 20,
                        keyboardType: TextInputType.visiblePassword,
                        controller: passController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          enabled: true,
                          counterText: '',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            icon: Icon(_obscureText
                                ? Icons.visibility_off
                                : Icons.visibility),
                          ),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(225, 227, 237, 1))),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(225, 227, 237, 1))),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(225, 227, 237, 1)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: "Enter your Password",
                          hintStyle: GoogleFonts.sora(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color.fromRGBO(186, 194, 199, 1))),
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.trim().isEmpty) {
                            return 'Please enter your Password';
                          }
                          if (value.contains(' ')) {
                            return 'Please avoid spaces';
                          }
                          /* if (!value.contains(RegExp(r'[A-Z]')) ||
                              (!value.contains(RegExp(r'[a-z]'))) ||
                              !value.contains(
                                  RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
                            return 'Password must contain at least one Capital letter one Small letter and one Special Character';
                          }

                          if (!(value.length > 8) || !(value.length < 20)) {
                            return 'Enter Proper password';
                          }
*/
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              bottomSheetformail(context);
                              // Navigator.pop(context);
                            },
                            child: Text(
                              "Forgot password?",
                              style: GoogleFonts.sora(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color.fromRGBO(29, 98, 202, 1))),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 150),
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
                            bool loginValidated =
                                _formKey.currentState!.validate();
                            if (loginValidated) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Succeed"),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Failed"),
                                ),
                              );
                            }
                          },
                          child: Text(
                            'Login',
                            style: GoogleFonts.sora(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromRGBO(255, 255, 255, 1))),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
