import 'package:flutter/material.dart';

class lifecycle extends StatefulWidget {
  const lifecycle({super.key});

  @override
  State createState() {
    print("createState");
    return _Lifecycle();
  }
}

class _Lifecycle extends State {
  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didchangeDependency");
  }

  @override
  void didUpdateWidget(Text) {
    super.didUpdateWidget(Text);
    print("didUpdateWidget");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  int? _count = 0;

  void _printTableValue() {
    setState(() {
      print("setState");
      _count = _count! + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("In build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lifecycle"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Click button to print Table values",
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_count",
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: _printTableValue,
              child: const Text("Print"),
            ),
          ],
        ),
      ),
    );
  }
}
