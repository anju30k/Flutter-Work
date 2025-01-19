import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Percentage Indicator Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Percentage Indicator Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: LinearPercentIndicator(
          width: 300.0,
          lineHeight: 14.0,
          percent: 0.5,
          backgroundColor: Colors.grey,
          barRadius: const Radius.circular(20),
          progressColor: Colors.green,
        ),
      ),
    );
  }
}
