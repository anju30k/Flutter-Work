import 'package:assignment_47petcareapp/screens.dart/dashboards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Grooming extends StatefulWidget {
  const Grooming({super.key});

  @override
  State<Grooming> createState() => _GrommingState();
}

class _GrommingState extends State<Grooming> {
  List datalist = [
    {
      "name": "Bathing & Drying",
      "image_path": 'assets/images/image (15).png',
    },
    {
      "name": "Hair Triming",
      "image_path": 'assets/images/image (16).png',
    },
    {
      "name": "Nail Trimming",
      "image_path": 'assets/images/image (17).png',
    },
    {
      "name": "Ear Cleaning",
      "image_path": 'assets/images/image (18).png',
    },
    {
      "name": "Testing",
      "image_path": 'assets/images/image (19).png',
    },
    {"name": "Injection", "image_path": 'assets/images/image (20).png'}
  ];

  @override
  Widget build(BuildContext context) {
    TextEditingController serachController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 50, right: 15),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashBoard(),
                      ));
                },
                child: Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromRGBO(245, 146, 69, 1)),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 13,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              Text(
                "Grooming",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 1))),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 99,
            width: 330,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(245, 146, 69, 1),
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Text("60% OFF",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                  color: Color.fromRGBO(255, 255, 255, 1)))),
                      Text("On hair & spa treatment",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 1)))),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Image.asset(
                    "assets/images/image (14).png",
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 36,
            width: 330,
            child: TextFormField(
              obscureText: true,
              controller: serachController,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.search,
                  size: 20,
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
                hintText: "Search",
                hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color.fromRGBO(194, 195, 204, 1))),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Row(
              children: [
                Text("Our Services",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color.fromRGBO(0, 0, 0, 1)))),
                const Spacer(),
                Text("See All",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromRGBO(194, 195, 204, 1))))
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
            child: GridView.builder(
                itemCount: datalist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15),
                //padding: const EdgeInsets.all(8),
                itemBuilder: (content, index) {
                  return Container(
                    height: 169,
                    width: 154,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("${datalist[index]["image_path"]}",
                            fit: BoxFit.cover),
                        const SizedBox(height: 12),
                        Text("${datalist[index]["name"]}",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(0, 0, 0, 1)))),
                      ],
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
