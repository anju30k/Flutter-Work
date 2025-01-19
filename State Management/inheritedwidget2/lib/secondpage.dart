import 'package:flutter/material.dart';
import 'package:assignment39inheritedwidget2/model.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State createState() => _SecondPage();
}

class _SecondPage extends State {
  @override
  Widget build(BuildContext context) {
    IPL iplobj = IPL.of(context);
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
                "PlayerName : ${iplobj.obj.playername}",
                style: const TextStyle(fontSize: 20),
              ),
              Text("CountryName : ${iplobj.obj.countryteam}",
                  style: const TextStyle(fontSize: 20)),
              Text(
                "IplTeam : ${iplobj.obj.iplteam}",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  // style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),),
                  onPressed: () {
                    setState(() {
                      iplobj.obj.iplteam = "CSK";
                    });
                  },
                  child: const Text("Change IPL Team"))
            ],
          ),
        ],
      ),
    );
  }
}
