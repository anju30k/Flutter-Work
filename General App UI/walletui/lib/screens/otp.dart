import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 45,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color.fromRGBO(87, 50, 191, 1)),
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Color.fromRGBO(87, 50, 191, 1))),
                onPressed: () {
                  // nocontroller.clear();
                },
                child: Text(
                  'Done',
                  style: GoogleFonts.sora(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color.fromRGBO(255, 255, 255, 1))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
