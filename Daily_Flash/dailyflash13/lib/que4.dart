import 'package:flutter/material.dart';

class Que4 extends StatefulWidget {
  @override
  State createState() => _Que4();
}

class _Que4 extends State {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
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
                autovalidateMode: AutovalidateMode.always,
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.always,
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Enter your EmailID",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your EmailID';
                  }
                  if (value.trim() == '@gmail.com') {
                    return 'Please enter your EmailId properly';
                  }
                  if (!value.endsWith("@gmail.com")) {
                    return 'Please enter your proper EmailID';
                  }
                  if (value.contains(' ')) {
                    return 'Please avoid spaces';
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
