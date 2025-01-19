import 'package:flutter/material.dart';

class Que4 extends StatefulWidget {
  @override
  State createState() => _Que4();
}

class _Que4 extends State {
  TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: const Text("Daily Flash"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: text,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    hintText: "Enter Data :"),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 30),
              ElevatedButton(onPressed: () {}, child: const Text("Submit"))
            ],
          ),
        ));
  }
}
