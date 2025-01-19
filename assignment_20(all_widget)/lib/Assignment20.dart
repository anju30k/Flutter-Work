import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AllWidgets();
}

class _AllWidgets extends State<Assignment> {
  List<String> list = [
    " TE_COMP_AY_2023-24",
    " SE_COMP_AY_2023-24",
    " FE_COMP_AY_2023-24",
    " BE_COMP_AY_2023-24",
  ];

  List<Color> colors = [Colors.amber, Colors.pink, Colors.green, Colors.blue];

  void showImage<Widget>() {
    Image.asset("assets/images/pic.jpg");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
          //centerTitle: true,
          title: const Text(
            "Google Classroom",
            style: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/pic.jpg"),
                radius: 40,
              ),
              onPressed: () {
                setState(() {
                  showImage();
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
              color: Colors.black,
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
              color: Colors.black,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(10),
                height: 200,
                width: 1000,
                alignment: Alignment.centerLeft,
                color: colors[index],
                child: Column(
                  children: [
                    Text(
                      "${list[index]}",
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }));
  }
}
