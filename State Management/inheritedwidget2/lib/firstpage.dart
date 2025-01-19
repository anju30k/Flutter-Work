import 'package:assignment39inheritedwidget2/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:assignment39inheritedwidget2/model.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State createState() => _FirstPage();
}

class _FirstPage extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IPL data"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Display(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class Display extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController countryteamController = TextEditingController();
  TextEditingController iplteamController = TextEditingController();

  Display({super.key});

  bool submit() {
    if (nameController.text.isNotEmpty &&
        countryteamController.text.isNotEmpty &&
        iplteamController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    IPL iplobj = IPL.of(context);
    return Column(
      children: [
        Container(
          height: 100,
          width: 500,
          padding: const EdgeInsets.all(8),
          child: TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                labelText: "Enter Player Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        Container(
          height: 100,
          width: 500,
          padding: const EdgeInsets.all(8),
          child: TextFormField(
            controller: countryteamController,
            decoration: InputDecoration(
                labelText: "Country Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        Container(
          height: 100,
          width: 500,
          padding: const EdgeInsets.all(8),
          child: TextFormField(
            controller: iplteamController,
            decoration: InputDecoration(
              labelText: "Enter IPLteam",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              if (submit()) {
                iplobj.obj.playername = nameController.text;
                iplobj.obj.countryteam = countryteamController.text;
                iplobj.obj.iplteam = iplteamController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              }
            },
            child: const Text("Submit"))
      ],
    );
  }
}
