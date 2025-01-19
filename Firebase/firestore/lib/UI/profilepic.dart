import 'dart:developer';
import 'dart:io';
import 'package:assignment_45firestore/firebase_authentication/login.dart';
import 'package:assignment_45firestore/firebase_authentication/snackbar.dart';
import 'package:assignment_45firestore/model_classes/student_screen_pic.dart';
import 'package:assignment_45firestore/splashscreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Firebasedemo_withprofile extends StatefulWidget {
  final String email;
  const Firebasedemo_withprofile({super.key, required this.email});

  @override
  State<Firebasedemo_withprofile> createState() => _Firebasedemo();
}

class _Firebasedemo extends State<Firebasedemo_withprofile> {
  TextEditingController studentname = TextEditingController();
  TextEditingController studentage = TextEditingController();

  List<StudentScreenPic> studentlist = [];

  ///instance for image picker
  final ImagePicker _imagePicker = ImagePicker();

  XFile? _selectedFile;

  ///Function to add img to firebase
  Future<void> uploadImage({required String filename}) async {
    log("Add img to firebase");
    await FirebaseStorage.instance
        .ref()
        .child(filename)
        .putFile(File(_selectedFile!.path));
  }

  ///Function to get url from firebase
  Future<String> downloadimgURL({required String filename}) async {
    log("Get URL to firebase");
    String url =
        await FirebaseStorage.instance.ref().child(filename).getDownloadURL();
    log("uploaded url:$url");
    return url;
  }

  ///Function to upload info to cloud database
  void addDataToFirebase({required String url}) {
    log("upload data to cloud");

    ///Add logic firebase
    Map<String, dynamic> data = {
      "studentname": studentname.text.trim(),
      "studentage": studentage.text.trim(),
      "profilepic": url
    };

    FirebaseFirestore.instance.collection("Studentdata").add(data);
    studentname.clear();
    studentage.clear();
    _selectedFile = null;

    setState(() {});

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Data Added")));
  }

  ///Function to get data
  Future<void> getDataFromFirebase() async {
    studentlist.clear();
    QuerySnapshot response =
        await FirebaseFirestore.instance.collection("Studentdata").get();

    //for in way
    for (var value in response.docs) {
      log("${value['studentname']}");
      studentlist.add(StudentScreenPic(
          studentname: value['studentname'],
          studentage: int.parse(value['studentage']),
          id: value.id,
          profilepic: value['profilepic']));
    }

    log("length of players list:${studentlist.length}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            // onTap: () async {
            //   _selectedFile =
            //       await _imagePicker.pickImage(source: ImageSource.gallery);
            //   if (_selectedFile != null) {
            //     log("File=${_selectedFile!.path}");
            //     setState(() {});
            //   }
            // },

            onTap: () async {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Icon(Icons.camera_alt),
                        title: Text('Camera'),
                        onTap: () async {
                          Navigator.pop(context); // Close the bottom sheet
                          _selectedFile = await _imagePicker.pickImage(
                            source: ImageSource.camera,
                          );
                          if (_selectedFile != null) {
                            log("File (Camera)=${_selectedFile!.path}");
                            setState(() {});
                          }
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.photo_library),
                        title: Text('Gallery'),
                        onTap: () async {
                          Navigator.pop(context); // Close the bottom sheet
                          _selectedFile = await _imagePicker.pickImage(
                            source: ImageSource.gallery,
                          );
                          if (_selectedFile != null) {
                            log("File (Gallery)=${_selectedFile!.path}");
                            setState(() {});
                          }
                        },
                      ),
                    ],
                  );
                },
              );
            },

            child: Container(
                width: 120,
                height: 120,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(60)),
                child: (_selectedFile == null)
                    ? Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGudC4lC7QWrwolFFMWxFs2QW_IfWR965AXw&s")
                    : Image.file(
                        File(_selectedFile!.path),
                        fit: BoxFit.contain,
                      )),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: studentname,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                  labelText: "Enter Student Name",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
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
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () async {
              if (studentname.text.trim().isNotEmpty &&
                  studentage.text.trim().isNotEmpty) {
                String filename =
                    _selectedFile!.name + DateTime.now().toString();

                ///add img to firebase
                await uploadImage(filename: filename);

                ///get url from firebase
                String url = await downloadimgURL(filename: filename);

                ///upload info to cloud database
                addDataToFirebase(url: url);

                ///get
                await getDataFromFirebase();
                setState(() {});
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Invalid Data")));
              }
            },
            child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(12),
                child: const Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () async {
              await getDataFromFirebase();

              setState(() {});
            },
            child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(12),
                child: const Text(
                  "Display",
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
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                        ),
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[200],
                              ),
                              child: Image.network(
                                studentlist[index].profilepic,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
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
