import 'package:flutter/material.dart';

class Que3 extends StatefulWidget {
  @override
  State createState() => _Que3();
}

class _Que3 extends State {
  bool _errorVisible1 = false;
  bool _errorVisible2 = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController clgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo_App"),
      ),
      body: Column(
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
                  setState(() {
                    _errorVisible1 = nameController.text.isEmpty;
                    _errorVisible2 = clgController.text.isEmpty;
                  });
                });
              },
              child: const Text(
                "Submit",
                style: TextStyle(color: Colors.black),
              )),
        ],
      ),
    );
  }
}
