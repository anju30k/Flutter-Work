import 'package:flutter/material.dart';
import 'package:assignment40company_inheritedw/company.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainApp();
}

class _MainApp extends State {
  String compName = "Google";
  int empCount = 250;

  @override
  Widget build(BuildContext context) {
    return Company(
        compName: compName,
        empCount: empCount,
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: const Text("Display Data"),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Details(),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          empCount++;
                          compName = "NVIDIA";
                        });
                      },
                      child: const Text("Change Details"))
                ],
              ),
            )));
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    Company obj = Company.of(context);
    return Column(
      children: [
        Text(
          "CompName : ${obj.compName}",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "EmpCount : ${obj.empCount}",
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
