import 'package:flutter/material.dart';
//flutter_svg: ^2.0.10+1

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State createState() => _Page1();
}

class _Page1 extends State {
  TextEditingController textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.menu_outlined)),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_outlined)),
                    ]),
                    const SizedBox(
                      height: 40,
                      width: 200,
                      child: Text(
                        "Welcome to New",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 37,
                      width: 182,
                      child: Text(
                        "Educourse",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 37,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                        controller: textcontroller,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              color: Colors.black,
                              onPressed: () {},
                              icon: const Icon(Icons.search_outlined)),
                          hintText: "Enter your Keyword",
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                        )),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                      height: 520,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(
                            left: 30,
                            top: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Course For You",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Container(
                                    height: 242,
                                    width: 190,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color.fromRGBO(197, 4, 98, 1),
                                              Color.fromRGBO(80, 3, 112, 1)
                                            ])),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 242,
                                    width: 190,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Color.fromRGBO(0, 77, 228, 1),
                                              Color.fromRGBO(1, 47, 135, 1)
                                            ])),
                                  ),
                                ],
                              )
                            ],
                          )))
                ],
              )
            ],
          ),
        ));
  }
}
