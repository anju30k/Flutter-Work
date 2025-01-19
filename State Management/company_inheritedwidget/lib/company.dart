import 'package:flutter/material.dart';

class Company extends InheritedWidget {
  final String compName;
  final int empCount;

  const Company(
      {super.key,
      required super.child,
      required this.compName,
      required this.empCount});

  @override
  bool updateShouldNotify(Company oldWidget) {
    return compName != oldWidget.compName || empCount != oldWidget.empCount;
  }

  static Company of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Company>()!;
  }
}
