import 'package:flutter/material.dart';
import 'package:assignment37datadisplay/modelclass.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginDetails(
        obj: ModelClass(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
        ));
  }
}
