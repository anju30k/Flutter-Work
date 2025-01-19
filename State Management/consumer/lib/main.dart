import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class Player {
  String name;
  int jerNo;
  Player({required this.name, required this.jerNo});
}

class Match extends ChangeNotifier {
  int runs;
  String place;
  Match({required this.place, required this.runs});

  void changeData(String place, int runs) {
    this.place = place;
    this.runs = runs;
    notifyListeners();
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("Build 1");
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) {
          return Match(runs: 500, place: "Mumbai");
        })),
        Provider(create: ((context) {
          return Player(name: "Dhoni", jerNo: 18);
        }))
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyApp();
}

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {
    log("Build 2");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Match>(context).place),
            const SizedBox(
              height: 20,
            ),
            Text("${Provider.of<Match>(context).runs}"),
            const SizedBox(
              height: 20,
            ),
            Text(Provider.of<Player>(context).name),
            const SizedBox(
              height: 20,
            ),
            Consumer<Player>(
              builder: (context, value, child) {
                return Text("${Provider.of<Player>(context).jerNo}");
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Match>(context, listen: false)
                      .changeData("Delhi", 600);
                },
                child: const Text("Change Data")),
            const SizedBox(
              height: 20,
            ),
            const NormalClass(),
          ],
        ),
      ),
    );
  }
}

class NormalClass extends StatelessWidget {
  const NormalClass({super.key});

  @override
  Widget build(BuildContext context) {
    log("Build 3");
    return Text(Provider.of<Match>(context)
        .place); //As the provider is mutable so obj may be diff hence call to build goes
    //const Text("Hii");                                      //As data is const each time same obj is returned
    //Text(Provider.of<Player>(context).name);                //As the Provider is immutable call only goes once and same obj is returned
  }
}
