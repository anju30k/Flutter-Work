import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const Assignment({super.key});

  @override
  State<Assignment> createState() => AssignmentState();
}

class AssignmentState extends State<Assignment> {
  final List<int> numberList = [111, 124, 121, 153, 145, 321];
  int? count0 = 0;
  int count1 = 0;
  int count2 = 0;

  int checkPal() {
    int ctr = 0;
    for (int i = 0; i < numberList.length; i++) {
      int data = numberList[i];
      int ret = 0;
      while (data != 0) {
        int rem = data % 10;
        ret = ret * 10 + rem;
        data = (data ~/ 10);
      }
      if (ret == numberList[i]) {
        ctr = ctr + 1;
      }
    }
    return ctr;
  }

  int armStrong() {
    int ctr = 0;
    for (int i = 0; i < numberList.length; i++) {
      int data = numberList[i];
      int sum = 0;

      while (data != 0) {
        int rem = data % 10;
        int prod = 1;
        int data1 = numberList[i];
        while (data1 != 0) {
          prod = prod * rem;
          data1 = data1 ~/ 10;
        }
        data = data ~/ 10;
        sum = sum + prod;
      }
      if (sum == numberList[i]) {
        ctr = ctr + 1;
      }
    }
    return ctr;
  }

  int strong() {
    int ctr = 0;

    for (int i = 0; i < numberList.length; i++) {
      int data = numberList[i];
      int sum = 0;

      int temp = data;
      while (data > 0) {
        int fact = 1;
        int mod = data % 10;
        for (int i = mod; i > 0; i--) {
          fact = fact * i;
        }
        data = data ~/ 10;
        sum = sum + fact;
      }
      if (sum == temp) {
        ctr = ctr + 1;
      }
    }
    return ctr;
  }

  void increaseCounter() {
    setState(() {
      count0 = checkPal();
    });
  }

  void increamentArm() {
    setState(() {
      count1 = armStrong();
    });
  }

  void increamentStrong() {
    setState(() {
      count2 = strong();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Number Information"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("Click button to check palindrome"),
            const SizedBox(
              height: 10,
            ),
            Text("$count0"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: increaseCounter,
                child: const Text("checkPalindrome")),
            const SizedBox(
              height: 20,
            ),
            const Text("Click button to check armstrong"),
            const SizedBox(
              height: 10,
            ),
            Text("$count1"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: increamentArm, child: const Text("checkArmStrong")),
            const SizedBox(
              height: 20,
            ),
            const Text("Click button to check strong"),
            const SizedBox(
              height: 10,
            ),
            Text("$count2"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: increamentStrong, child: const Text("checkStrong")),
          ]),
        ));
  }
}
