import 'package:assignment_47petcareapp/screens.dart/details.dart';
import 'package:assignment_47petcareapp/screens.dart/navigator.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Veterinarys extends StatefulWidget {
  const Veterinarys({super.key});

  @override
  State<Veterinarys> createState() => _Veterinarys();
}

class _Veterinarys extends State<Veterinarys> {
  List doctor = [
    {
      "name": "Dr. Anna Johanson",
      "image_path": 'assets/images/image (11).png',
      "add": "Veterinary Behavioral",
      "rate": 4.8,
      "distance": "1 km"
    },
    {
      "name": "Dr. Vernon Chwe",
      "image_path": 'assets/images/image (12).png',
      "add": "Veterinary Surgery",
      "rate": 4.9,
      "distance": "1.5 km"
    }
  ];

  TextEditingController serachController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const MyNavigator(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 15.0, right: 15),
            child: Column(children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: Color.fromRGBO(245, 146, 69, 1),
                    size: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text("London ,UK",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromRGBO(194, 195, 204, 1)))),
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
                      child: Text("Lets Find Specialist\nDoctor for Your Pet!",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(255, 255, 255, 1)))),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Image.asset(
                        "assets/images/image_.png",
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
                        borderSide: BorderSide(
                            color: Color.fromRGBO(250, 200, 162, 1))),
                    enabled: true,
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(
                            color: Color.fromRGBO(250, 200, 162, 1))),
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
                padding: const EdgeInsets.all(8.0),
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
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              AssetImage("assets/images/image (7).png"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Vaccinations",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(245, 146, 69, 1))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          /*  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const grooming()));*/
                        },
                        child: const CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              AssetImage("assets/images/image (8).png"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Operations",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(245, 146, 69, 1))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: 27,
                        backgroundImage:
                            AssetImage("assets/images/image (9).png"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Behaviorals",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(245, 146, 69, 1))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          /*   Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const training()));*/
                        },
                        child: const CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              AssetImage("assets/images/image (10).png"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Dentistry",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(245, 146, 69, 1))),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Best Specialists Nearby",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromRGBO(0, 0, 0, 1)))),
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: doctor.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 126,
                          width: 335,
                          padding: const EdgeInsets.only(left: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DrDetails()));
                                },
                                child: Image.asset(
                                    "${doctor[index]["image_path"]}",
                                    fit: BoxFit.cover),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, left: 25, right: 8, bottom: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${doctor[index]["name"]}",
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 1)))),
                                    const SizedBox(height: 10),
                                    Text("${doctor[index]["add"]}",
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: Color.fromRGBO(
                                                    194, 195, 204, 1)))),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star_border_outlined,
                                          size: 20,
                                          color:
                                              Color.fromRGBO(245, 146, 69, 1),
                                        ),
                                        Text("${doctor[index]["rate"]}",
                                            style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        194, 195, 204, 1)))),
                                        const SizedBox(width: 20),
                                        const Icon(
                                          Icons.location_on_outlined,
                                          size: 20,
                                          color:
                                              Color.fromRGBO(245, 146, 69, 1),
                                        ),
                                        Text("${doctor[index]["distance"]}",
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
            ]),
          ),
        ));
  }
}
