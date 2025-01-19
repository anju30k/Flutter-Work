import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Flag(),
    );
  }
}

class Flag extends StatefulWidget {
  const Flag({super.key});

  @override
  State<Flag> createState() => _Flag();
}

class _Flag extends State<Flag> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Republic Day",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.orangeAccent,
              Colors.white,
              Colors.greenAccent,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (count >= 1)
                ? Container(
                    height: double.infinity,
                    width: 5,
                    color: Colors.black,
                  )
                : Container(),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  (count >= 2)
                      ? Container(
                          height: 100,
                          width: 450,
                          color: Colors.deepOrangeAccent,
                        )
                      : Container(),
                  (count >= 3)
                      ? Container(
                          child: Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Ashoka_Chakra_1.svg/640px-Ashoka_Chakra_1.svg.png"),
                          height: 100,
                          width: 450,
                          color: Colors.white,
                          //child: Image.asset("asserts/ashok charkra.png"),
                        )
                      : Container(),
                  (count >= 4)
                      ? Container(
                          height: 100,
                          width: 450,
                          color: Colors.green,
                        )
                      : Container(),
                ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
