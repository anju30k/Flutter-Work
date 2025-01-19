import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:assignment36_inheritedwidget_eg/secondpage.dart';

void main() {
  runApp(const MainApp());
}

class BGcolor extends InheritedWidget {
  final Color colour;
  final Function(Color) setColor;

  const BGcolor({
    Key? key,
    required this.setColor,
    required this.colour,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(BGcolor oldWidget) {
    //return colour != oldWidget.colour;
    return true;
  }

  static BGcolor of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BGcolor>()!;
  }

  void setColorValue(Color newColor) {
    setColor(newColor);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BGcolor(
      colour: Colors.black,
      setColor: (newColor) {
        log('New color: $newColor');
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirstPage(),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  createState() => _FirstPage();
}

class _FirstPage extends State {
  @override
  Widget build(BuildContext context) {
    final bgColor = BGcolor.of(context);
    return Scaffold(
      backgroundColor: bgColor.colour,
      appBar: AppBar(
        title: const Text("Real-time Example"),
      ),
      body:  Center(
        child: GestureDetector(
      onTap: () {
        final currentColor = BGcolor.of(context).colour;
        final newColor =
            currentColor == Colors.black ? Colors.white : Colors.white;
        log('Current color: $currentColor, New color: $newColor');
        BGcolor.of(context).setColorValue(newColor);
        setState(() {});
      },
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        child: const Center(
          child: Text(
            "Change BackgroundColor",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SecondPage(),
            ),
          );
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}

