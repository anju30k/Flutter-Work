import 'package:flutter/material.dart';
import 'package:assignment37datadisplay/display.dart';

class ModelClass {
  String? Id;
  String? Name;
  String? Username;
  List skills = [];

  ModelClass({this.Id, this.Name, this.Username});
}

class LoginDetails extends InheritedWidget {
  final ModelClass obj;

  const LoginDetails({super.key, required super.child, required this.obj});

  @override
  bool updateShouldNotify(LoginDetails oldWidget) {
    return obj != oldWidget.obj;
  }

  static LoginDetails of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LoginDetails>()!;
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  createState() => _LoginPage();
}

class _LoginPage extends State {
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    LoginDetails loginobj = LoginDetails.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginPage"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Login ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            Container(
              height: 100,
              width: 500,
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                controller: idController,
                decoration: InputDecoration(
                    labelText: "Enter Id",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              height: 100,
              width: 500,
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    labelText: "Enter Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              height: 100,
              width: 500,
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: "Enter UserName",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            ElevatedButton(
                // style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),),
                onPressed: () {
                  if (idController.text.isNotEmpty &&
                      nameController.text.isNotEmpty &&
                      usernameController.text.isNotEmpty) {
                    loginobj.obj.Id = idController.text;
                    loginobj.obj.Name = nameController.text;
                    loginobj.obj.Username = usernameController.text;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DisplayPage(),
                      ),
                    );
                  }
                },
                child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
