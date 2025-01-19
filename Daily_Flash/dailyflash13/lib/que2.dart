import 'package:flutter/material.dart';

class Que2 extends StatefulWidget {
  @override
  State createState() => _Que2();
}

class _Que2 extends State {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController phnController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo_App"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.phone,
                controller: phnController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Enter your Phone Number",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Phone No.';
                  }
                  if (value.trim().isEmpty) {
                    return 'Phone No. should not contain space';
                  }
                  if (value.length != 10) {
                    return 'Phone No. must be 10 digits long';
                  }

                  /* if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                    return 'Phone No. must contain only digits';
                  }*/
                  for (int i = 0; i < value.length; i++) {
                    String character = value[i];
                    if (character.compareTo('0') < 0 ||
                        character.compareTo('9') > 0) {
                      return 'Phone No. must contain only digits';
                    }
                  }
                  return null;
                },
              ),
            ),
            ElevatedButton(
                /*style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                ),*/
                onPressed: () {
                  bool loginValidated = _formKey.currentState!.validate();
                  if (loginValidated) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Succeed"),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Failed"),
                      ),
                    );
                  }
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
