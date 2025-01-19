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

  List<String> name = [];
  List<String> companyName = [];
  List<String> location = [];

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
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            body: SingleChildScrollView(
                child: Column(children: [
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
                      name.add(controller1.text);
                      companyName.add(controller2.text);
                      location.add(controller3.text);

                      controller1.clear();
                      controller2.clear();
                      controller3.clear();
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
                      height: 800,
                      padding: const EdgeInsets.all(15),
                      
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: name.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: const EdgeInsets.all(10),
                              child: Column(children: [
                                Text(
                                  "Name: ${name[index]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Company: ${companyName[index]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Location: ${location[index]}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                              ]),
                            );
                          }))
                  : Container(),
              
            ]))));
  }
}
