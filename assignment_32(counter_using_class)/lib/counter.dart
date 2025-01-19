import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Appbar"),
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Course("Java"),
            SizedBox(
              height: 20,
            ),
            Course("Flutter"),
          ],
        ));
  }
}

class Course extends StatefulWidget {
  final String couseName;
  const Course(this.couseName, {super.key});

  @override
  State<Course> createState() => _Course();
}

class _Course extends State<Course> {
  int counter = 0;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              counter++;
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
            child: Text(
              widget.couseName,
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Text("$counter"),
      ],
    );
  }
}
