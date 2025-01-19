import 'package:flutter/material.dart';

class IPL extends InheritedWidget {
  final Modelclass obj;

  const IPL({super.key, required this.obj, required super.child});

  @override
  bool updateShouldNotify(IPL oldWidget) {
    return obj != oldWidget.obj;
  }

  static IPL of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<IPL>()!;
  }
}

class Modelclass {
  String? playername;
  String? countryteam;
  String? iplteam;

  Modelclass({this.playername, this.countryteam, this.iplteam});
}
