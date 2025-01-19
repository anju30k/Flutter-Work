import "dart:developer";
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class Company extends ChangeNotifier {
  String compName;
  int empCount;
  int data;

  Company({required this.compName, required this.empCount, required this.data});

  void changeCompany(String compName, int empCount) {
    this.compName = compName;
    this.empCount = empCount;
    notifyListeners();
  }
}

class Employee {
  String empName;
  int empId;
  int data;

  Employee({required this.empName, required this.empId, required this.data});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("In build 1 ");
    return MultiProvider(
      providers: [
        Provider(create: (context) {
          return Employee(empName: "Anjali", empId: 101, data: 1);
        }),
        ChangeNotifierProvider(create: (context) {
          return Company(compName: "Google", empCount: 250, data: 2);
        })
      ],
      child:
          const MaterialApp(debugShowCheckedModeBanner: false, home: MainApp()),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    log("In build 2 ");
    return Scaffold(
      appBar: AppBar(title: const Text("StateManagement")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${Provider.of<Company>(context).data}"),
          // Text("${Provider.of(context).data}"),
          const SizedBox(
            height: 20,
          ),
          Text("${Provider.of(context).compName}"),
          // Text("${Provider.of(context).data}"),
          const SizedBox(
            height: 20,
          ),
          Text("${Provider.of<Employee>(context).data}"),
          //Text("${Provider.of(context).data}"),
          const SizedBox(
            height: 20,
          ),
          Text("${Provider.of<Employee>(context).data}"),
          //Text("${Provider.of(context).data}"),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<Company>(context, listen: false)
                    .changeCompany("Facebook", 500);
              },
              child: const Text("Change Company")),
          const SizedBox(
            height: 20,
          ),
          const NormalClass(),
        ],
      ),
    );
  }
}

class NormalClass extends StatelessWidget {
  const NormalClass({super.key});

  @override
  Widget build(BuildContext context) {
    log("In build 3");
    return const Text("Hello");
  }
}
