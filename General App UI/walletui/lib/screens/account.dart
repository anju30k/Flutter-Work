import 'package:assignment_50walletui/screens/createaccs.dart';
import 'package:assignment_50walletui/screens/otp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<Account> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController passController = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

  bool _obscureText = true;
  bool isChecked = false;

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
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                Text(
                  "Create Account",
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Name",
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: namecontroller,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "e.g. John Doe",
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(191, 189, 189, 1)),
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
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
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
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "e.g. email@example.com",
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(191, 189, 189, 1)),
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
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
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
                    if (!value.contains(RegExp(r'[A-Z]')) ||
                        (!value.contains(RegExp(r'[a-z]'))) ||
                        !value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
                      return 'Password must contain at least one Capital letter one Small letter and one Special Character';
                    }

                    if (!(value.length > 8) || !(value.length < 20)) {
                      return 'Enter Proper password';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                    Text(
                      "I accept ",
                      style: GoogleFonts.sora(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12)),
                    ),
                    Text(
                      "terms and conditions ",
                      style: GoogleFonts.sora(
                          textStyle: const TextStyle(
                              color: Color.fromRGBO(29, 98, 202, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 12)),
                    ),
                    Text(
                      "and ",
                      style: GoogleFonts.sora(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12)),
                    ),
                    Text(
                      "privacy policy",
                      style: GoogleFonts.sora(
                          color: const Color.fromRGBO(29, 98, 202, 1),
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12)),
                    )
                  ],
                ),
                const SizedBox(height: 10),
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
                                builder: (context) => const Otp()));
                        // nocontroller.clear();
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Please enter valid details.'),
                        ));
                      }
                    },
                    child: Text(
                      'Create a new account',
                      style: GoogleFonts.sora(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color.fromRGBO(255, 255, 255, 1))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
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
                                builder: (context) => const CreateAccount()));
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.sora(
                            color: const Color.fromRGBO(29, 98, 202, 1),
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12)),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
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
                const SizedBox(height: 20),
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
      ),
    );
  }
}
