import 'package:assignment37datadisplay/modelclass.dart';
import 'package:assignment37datadisplay/skillpage.dart';
import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key});

  @override
  createState() => _DisplayPage();
}

class _DisplayPage extends State {
  @override
  Widget build(BuildContext context) {
    LoginDetails loginObj = LoginDetails.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Data"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                "Id : ${loginObj.obj.Id}",
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                "Name : ${loginObj.obj.Name}",
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                "UserName : ${loginObj.obj.Username}",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  // style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SkillPage(),
                      ),
                    );
                  },
                  child: const Text("Add Skills"))
            ],
          ),
        ],
      ),
    );
  }
}
