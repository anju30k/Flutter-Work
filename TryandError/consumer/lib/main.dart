import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class Bill extends ChangeNotifier {
  String name;
  double bill;

  Bill({required this.name, required this.bill});

  void changeData(String name, double bill) {
    this.name = name;
    this.bill = bill;
    notifyListeners();
  }
}

class Mall extends ChangeNotifier {
  String mallName;
  String address;

  Mall({required this.mallName, required this.address});

  void changeData(String mallName, String address) {
    this.mallName = mallName;
    this.address = address;
    notifyListeners();
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    log("Build 1");
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) {
          return Mall(mallName: "Abhiruchi", address: "Sinhgad_Road");
        })),
        ChangeNotifierProvider(create: ((context) {
          return Bill(name: "Anjali", bill: 500);
        }))
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyApp();
}

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {
    log("Build 2");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /* Consumer<Mall>(
              builder: (context, value, child) {
                return Column(
                  children: [
                      Text(Provider.of<Mall>(context).mallName),
                    const SizedBox(
                      height: 20,
                    ),
                      Text(Provider.of<Mall>(context).address),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),*/
            Consumer<Bill>(
              builder: (context, value, child) {
                return Column(
                  children: [
                    Text(Provider.of<Bill>(context).name),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("${Provider.of<Bill>(context).bill}"),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                );
              },
            ),
            Consumer2<Mall, Bill>(
              builder: (context, value, value2, child) {
                return Column(
                  children: [
                    Text(
                      //Text(Provider.of<Mall>(context).mallName),
                      value.mallName,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      //Text(Provider.of<Mall>(context).address),
                      value.address,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Text(Provider.of<Bill>(context).bill),
                    Text("${value2.bill}"),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      //Text(Provider.of<Bill>(context).name),
                      value2.name,
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Provider.of<Bill>(context, listen: false)
                      .changeData("Namita", 1000);

                  //  Provider.of<Mall>(context, listen: false)
                  //     .changeData("Reliance", "Bramati");
                },
                child: const Text("Change Data")),
            const SizedBox(
              height: 20,
            ),
            //const NormalClass(),
          ],
        ),
      ),
    );
  }
}

class NormalClass extends StatelessWidget {
  const NormalClass({super.key});

  @override
  Widget build(BuildContext context) {
    log("Build 3");
    return Text(Provider.of<Mall>(context)
        .mallName); //As the provider is mutable so obj may be diff hence call to build goes
    //const Text("Hii");                                      //As data is const each time same obj is returned
    //Text(Provider.of<Player>(context).name);                //As the Provider is immutable call only goes once and same obj is returned
  }
}
