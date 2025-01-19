import 'package:flutter/material.dart';

class Que2 extends StatefulWidget {
  @override
  State createState() => _Que2();
}

class _Que2 extends State {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo_App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              //suffixIcon: const Icon(Icons.lock),
              suffixIcon: isTap
                  ? const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.search),
                        const Icon(Icons.lock),
                      ],
                    )
                  : const Icon(Icons.lock),
            ),
            onTap: () {
              setState(() {
                isTap = !isTap;
              });
            },
          ),
        ),
      ),
    );
  }
}
