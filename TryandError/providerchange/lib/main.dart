import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainApp();
}

class Company {
  String compName;
  int empCount;

  Company({required this.compName, required this.empCount});

  void changeCompany(String compName, int empCount, BuildContext context) {
    this.compName = compName;
    this.empCount = empCount;
    //Provider.of<Company>(context, listen: false).notifyListeners();
  }
}

class _MainApp extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return Company(compName: "Google", empCount: 250);
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Display(),
      ),
    );
  }
}

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _Display();
}

class _Display extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text(
            "Company Data",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("CompanyName: ${Provider.of<Company>(context).compName}"),
              const SizedBox(
                height: 20,
              ),
              Text("EmployeeCount: ${Provider.of<Company>(context).empCount}"),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<Company>(context, listen: false)
                        .changeCompany("Facebook", 500, context);
                  },
                  child: const Text("Change"))
            ],
          ),
        ));
  }
}
