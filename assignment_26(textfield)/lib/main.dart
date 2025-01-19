import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _Textfield();
}

class _Textfield extends State {
  bool flag = false;

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  String name = '';
  String companyName = '';
  String location = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            centerTitle: true,
            title: const Text(
              "Dream Company",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 20),
            ),
          ),
          body: Column(children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller1,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: "Enter Name :"),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: "Company Name :"),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller3,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  hintText: "Location :"),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amber),
                ),
                onPressed: () {
                  setState(() {
                    flag = true;
                    name = controller1.text;
                    companyName = controller2.text;
                    location = controller3.text;
                  });
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.black),
                )),
            const SizedBox(
              height: 20,
            ),
            (flag == true)
                ? Container(
                    child: Column(
                    children: [
                      Text(
                        "Name: $name",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      Text(
                        "Company: $companyName",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      Text(
                        "Location: $location",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ],
                  ))
                : Container(),
          ])),
    );
  }
}
