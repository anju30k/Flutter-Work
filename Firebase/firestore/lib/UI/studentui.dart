import 'dart:developer';
import 'package:assignment_45firestore/firebase_authentication/login.dart';
import 'package:assignment_45firestore/firebase_authentication/snackbar.dart';
import 'package:assignment_45firestore/splashscreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../model_classes/student_screen.dart';

class FirebaseDemoBasic extends StatefulWidget {
  final String email;
  const FirebaseDemoBasic({super.key, required this.email});

  @override
  State<FirebaseDemoBasic> createState() => _Firebasedemo();
}

class _Firebasedemo extends State<FirebaseDemoBasic> {
  TextEditingController studentname = TextEditingController();
  TextEditingController studentage = TextEditingController();

  List<StudentScreen> studentlist = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              await SessionData.storeSessionData(loginData: false, emailId: '');

              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
              CustomSnackBar.showCustomSnackbar(
                  message: " Logout Successfully", context: context);
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.logout),
            ),
          )
        ],
        backgroundColor: Colors.orange,
        centerTitle: true,
        title: Text(
          widget.email,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: studentname,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                labelText: "Enter Student Name",
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: studentage,
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
                labelText: "Enter Student Age",
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                )),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              if (studentname.text.trim().isNotEmpty &&
                  studentage.text.trim().isNotEmpty) {
                Map<String, dynamic> data = {
                  "studentname": studentname.text.trim(),
                  "studentage": studentage.text.trim(),
                };

                FirebaseFirestore.instance.collection("Studentdata").add(data);
                studentname.clear();
                studentage.clear();

                ScaffoldMessenger.of(context)
                    .showSnackBar(const SnackBar(content: Text("Data Added")));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Invalid Data")));
              }
            },
            child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(12),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () async {
              QuerySnapshot response = await FirebaseFirestore.instance
                  .collection("Studentdata")
                  .get();

              studentlist.clear();

              //for in way
              // for (var value in response.docs) {
              //   print("{value['studentname']}");
              // }

              //for loop
              for (int i = 0; i < response.docs.length; i++) {
                log("${response.docs[i]['studentname']}");

                studentlist.add(StudentScreen(
                    studentname: response.docs[i]['studentname'],
                    studentage: int.parse(response.docs[i]['studentage']),
                    id: response.docs[i].id));
              }

              setState(() {});
            },
            child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(12),
                child: const Text(
                  "Get Data",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                itemCount: studentlist.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  {
                    return GestureDetector(
                      onTap: () {
                        FirebaseFirestore.instance
                            .collection('Studentdata')
                            .doc(studentlist[index].id)
                            .delete();
                        studentlist.removeAt(index);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Data Deleted")),
                        );
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Student Name: ${studentlist[index].studentname}",
                              style: const TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Student Age: ${studentlist[index].studentage}",
                              style: const TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
}
