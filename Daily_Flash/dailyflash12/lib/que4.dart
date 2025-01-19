import 'package:flutter/material.dart';

class Que4 extends StatefulWidget {
  @override
  State createState() => _Que4();
}

class _Que4 extends State {
  bool _errorVisible1 = false;
  bool _errorVisible2 = false;

  List mylist1 = [];
  List mylist2 = [];

  bool flag = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController clgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo_App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Enter your Name",
                    errorText: _errorVisible1 ? "Enter your Name" : null,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: clgController,
                decoration: InputDecoration(
                    hintText: "Enter your College",
                    errorText: _errorVisible2 ? "Enter your College" : null,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            ElevatedButton(
                /*style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                ),*/
                onPressed: () {
                  setState(() {
                    _errorVisible1 = nameController.text.isEmpty;
                    _errorVisible2 = clgController.text.isEmpty;

                    if (nameController.text.isNotEmpty &&
                        clgController.text.isNotEmpty) {
                      mylist1.add(nameController.text);
                      mylist2.add(clgController.text);
                      flag = true;
                    }

                    nameController.clear();
                    clgController.clear();
                  });
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.black),
                )),
            (flag == true)
                ? Container(
                    height: 800,
                    width: 300,
                    padding: const EdgeInsets.all(15),
                    child: ListView.builder(
                      itemCount: mylist1.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Text("Name: ${mylist1[index]}"),
                              Text("CollegeName: ${mylist2[index]}"),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
