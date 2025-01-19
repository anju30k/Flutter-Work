import 'package:flutter/material.dart';

class Que5 extends StatefulWidget {
  @override
  State createState() => _Que5();
}

class _Que5 extends State {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                maxLength: 20,
                autovalidateMode: AutovalidateMode.always,
                keyboardType: TextInputType.name,
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Enter your UserName",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Username';
                  }
                  if (value.trim().isEmpty) {
                    return 'Username should not contain space';
                  }
                  if (!(value.length > 6) || !(value.length < 20)) {
                    return 'Enter Proper username';
                  }

                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                maxLength: 20,
                keyboardType: TextInputType.visiblePassword,
                autovalidateMode: AutovalidateMode.always,
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Enter your Password",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim().isEmpty) {
                    return 'Please enter your Password';
                  }
                  if (value.contains(' ')) {
                    return 'Please avoid spaces';
                  }
                  if (!value.contains(RegExp(r'[A-Z]')) ||
                      (!value.contains(RegExp(r'[a-z]'))) ||
                      !value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
                    return 'Password must contain at least one Capital letter one Small letter and one Special Character';
                  }

                  if (!(value.length > 8) || !(value.length < 20)) {
                    return 'Enter Proper password';
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
