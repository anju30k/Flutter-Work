import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flag"),
        ),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: double.infinity,
                width: 12,
                color: Colors.black,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 500,
                      color: Colors.deepOrangeAccent,
                    ),
                    Container(
                      height: 100,
                      width: 500,
                      color: Colors.white,
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Ashoka_Chakra_1.svg/640px-Ashoka_Chakra_1.svg.png"),
                      //child: Image.asset("asserts/ashok charkra.png"),
                    ),
                    Container(
                      height: 100,
                      width: 500,
                      color: Colors.green,
                    )
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
