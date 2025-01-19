import 'package:assignment_47petcareapp/screens.dart/dashboards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Training extends StatefulWidget {
  const Training({super.key});

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  List<Map<String, String>> data = [
    {
      "image_path": 'assets/images/Frame 2061.png',
      "name": "Obedience Courses",
      "by": "By Jhon Smith",
      "rate": "4.9 (335)"
    },
    {
      "image_path": 'assets/images/Frame 2061 (1).png',
      "name": "Specialty Classes &\nWorkshops",
      "by": "By Duke Fuzzington",
      "rate": "5.0 (500)"
    },
    {
      "image_path": 'assets/images/Frame 2061 (2).png',
      "name": "Puppy Kinderganten\nand Playgroups",
      "by": "By Sir Fluffington",
      "rate": "5.0 (500)"
    },
    {
      "image_path": 'assets/images/Frame 2061 (3).png',
      "name": "Canine Good Citizen Test",
      "by": "By Baron Fuzzypaws",
      "rate": "4.8 (220)"
    },
    {
      "image_path": 'assets/images/Frame 2061 (4).png',
      "name": "Theraphy Dogs",
      "by": "By Duke Fuzzington",
      "rate": "5.0 (500)"
    }
  ];
  @override
  Widget build(BuildContext context) {
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
                "Training",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 1))),
              ),
              const Spacer(),
            ],
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 122,
                        width: 330,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(0, 8),
                                  blurRadius: 16,
                                  spreadRadius: -4,
                                  color: Color.fromRGBO(22, 34, 51, 0.08))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Image.asset("${data[index]["image_path"]}",
                                fit: BoxFit.cover),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 8, bottom: 8, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${data[index]["name"]}",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 1)))),
                                  const SizedBox(height: 5),
                                  Text("${data[index]["by"]}",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  194, 195, 204, 1)))),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.star_border_outlined,
                                        size: 20,
                                        color: Color.fromRGBO(245, 146, 69, 1),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Text("${data[index]["rate"]}",
                                          style: GoogleFonts.poppins(
                                              textStyle: const TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: Color.fromRGBO(
                                                      194, 195, 204, 1)))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
