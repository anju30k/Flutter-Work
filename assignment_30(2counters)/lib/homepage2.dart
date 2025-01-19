import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  int _counter1 = 0;
  int _counter2 = 0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Appbar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber)),
                    onPressed: _incrementCounter1,
                    child: const Icon(
                      Icons.add,
                    )),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '$_counter1',
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber)),
                    onPressed: _incrementCounter2,
                    child: const Icon(
                      Icons.add,
                    )),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '$_counter2',
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
