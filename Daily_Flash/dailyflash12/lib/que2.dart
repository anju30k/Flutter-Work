import 'package:flutter/material.dart';

class Que2 extends StatefulWidget {
  @override
  State createState() => _Que2();
}

class _Que2 extends State {
  List mylist = [];
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo_App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  labelText: "Enter Weekdays",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
              onSubmitted: (text) {
                setState(() {
                  if (text.isNotEmpty) {
                    mylist.add(text);
                    nameController.clear();
                  }
                });
              },
            ),
          ),
          Text("${mylist}")
          /* Container(
            height: 500,
           
            child: ListView.builder(
              
              itemCount: mylist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(mylist[index]),
                );
              },
            ),
          )*/
        ],
      ),
    );
  }
}
