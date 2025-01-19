import 'package:flutter/material.dart';

class Que5 extends StatefulWidget {
  @override
  State createState() => _Que5();
}

class _Que5 extends State {
  bool flag = false;

  List<String> namelist = [];
  List<String> phonenolist = [];

  TextEditingController name = TextEditingController();
  TextEditingController phoneno = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: const Text("Daily Flash"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Enter Name :"),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: phoneno,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Enter Number :"),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        flag = true;
                        namelist.add(name.text);
                        phonenolist.add(phoneno.text);

                        name.clear();
                        phoneno.clear();
                      });
                    },
                    child: const Text("Submit")),
                const SizedBox(height: 30),
                (flag == true)
                    ? Container(
                        height: 800,
                        padding: const EdgeInsets.all(15),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: namelist.length,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: const EdgeInsets.all(10),
                                child: Column(children: [
                                  Text(
                                    "Name: ${namelist[index]}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "Company: ${phonenolist[index]}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontSize: 20),
                                  ),
                                ]),
                              );
                            }))
                    : Container(),
              ],
            ),
          ),
        ));
  }
}
