import 'package:flutter/material.dart';
import 'package:assignment37datadisplay/modelclass.dart';

class SkillPage extends StatefulWidget {
  const SkillPage({super.key});

  @override
  createState() => _SkillPage();
}

class _SkillPage extends State {
  TextEditingController skillController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    LoginDetails loginobj = LoginDetails.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Skills"),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: 500,
            padding: const EdgeInsets.all(8),
            child: TextFormField(
              controller: skillController,
              decoration: InputDecoration(
                  labelText: "Enter Skill",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          ElevatedButton(
              // style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),),
              onPressed: () {
                if (skillController.text.isNotEmpty) {
                  setState(() {
                    loginobj.obj.skills.add(skillController.text);
                    skillController.clear();
                  });
                }
              },
              child: const Text("Add")),
          SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: loginobj.obj.skills.length,
                itemBuilder: ((context, index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Skills : ${loginobj.obj.skills[index]}",
                      //"Skill ${index + 1}: ${loginobj.obj.skills![index]}",
                      style: const TextStyle(fontSize: 20),
                    ),
                  );
                }),
              ))
        ],
      ),
    );
  }
}
