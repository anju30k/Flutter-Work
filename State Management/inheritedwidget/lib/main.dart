import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class SharedData extends InheritedWidget {
  final int data;
  const SharedData({super.key, required this.data, required super.child});

  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return data != oldWidget.data;
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SharedData(
      data: 50,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SharedData obj = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "InheritedWidget",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text("${obj.data}"),
          const SizedBox(
            height: 20,
          ),
          const AccessdataWidget()
        ],
      ),
    );
  }
}

class AccessdataWidget extends StatelessWidget {
  const AccessdataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SharedData obj = SharedData.of(context);
    return Row(
      children: [
        Text("${obj.data}"),
        const SizedBox(
          width: 20,
        ),
        const AccessDataChild()
      ],
    );
  }
}

class AccessDataChild extends StatelessWidget {
  const AccessDataChild({super.key});

  @override
  Widget build(BuildContext context) {
    SharedData obj = context.dependOnInheritedWidgetOfExactType<SharedData>()!;
    return Text("${obj.data}");
  }
}
