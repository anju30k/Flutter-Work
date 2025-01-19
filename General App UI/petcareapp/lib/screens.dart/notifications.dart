import 'package:assignment_47petcareapp/screens.dart/dashboards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _Notifications();
}

class _Notifications extends State<Notifications> {
  List datelist = ["Today", "25 September", "15 September", "21 October"];
  List<Map<String, String>> data = [
    {
      "text1": "Your checkout is successfull, product is\non the way",
      "text2": "Appointment request accepted",
      "text3": "Vaccinate your pet timely"
    },
    {
      "text1": "Your checkout is successfull, product is\non the way",
      "text2": "Appointment request accepted",
      "text3": "Vaccinate your pet timely"
    },
    {
      "text1": "Your checkout is successfull, product is\non the way",
      "text2": "Appointment request accepted",
      "text3": "Vaccinate your pet timely"
    },
    {
      "text1": "Your checkout is successfull, product is\non the way",
      "text2": "Appointment request accepted",
      "text3": "Vaccinate your pet timely"
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
                "Notifications",
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
              itemCount: datelist.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${datelist[index]}",
                        style: const TextStyle(
                            color: Color.fromRGBO(31, 32, 41, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 345,
                        height: 160,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    margin: const EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            252, 219, 193, 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Color.fromRGBO(245, 146, 69, 1),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text(
                                    "${data[index]["text1"]}",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color.fromRGBO(0, 0, 0, 1))),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    margin: const EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            252, 219, 193, 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Icon(Icons.check_outlined,
                                        color:
                                            Color.fromRGBO(245, 146, 69, 1))),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "${data[index]["text2"]}",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color.fromRGBO(0, 0, 0, 1))),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    height: 40,
                                    width: 40,
                                    //margin: const EdgeInsets.only(bottom: 8),
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            252, 219, 193, 1),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Icon(
                                        Icons.favorite_border_outlined,
                                        color:
                                            Color.fromRGBO(245, 146, 69, 1))),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(
                                    "${data[index]["text3"]}",
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: Color.fromRGBO(0, 0, 0, 1))),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
