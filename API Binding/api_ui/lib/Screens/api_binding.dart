import 'package:assignmnet47_api_ui/Screens/edit_post_screen.dart';
import 'package:assignmnet47_api_ui/Screens/get_imgdetails.dart';
import 'package:assignmnet47_api_ui/Screens/get_screen.dart';
import 'package:assignmnet47_api_ui/Screens/listscreen.dart';
import 'package:assignmnet47_api_ui/Screens/multi_select_screen.dart';
import 'package:assignmnet47_api_ui/Screens/post_data_screen.dart';
import 'package:assignmnet47_api_ui/Screens/snackbar_screen.dart';
import 'dart:developer';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:loading_animation_widget/loading_animation_widget.dart';

class ApiBinding extends StatefulWidget {
  const ApiBinding({super.key});

  @override
  State<ApiBinding> createState() => _ApiBindingState();
}

class _ApiBindingState extends State<ApiBinding> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "API Binding",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isLoading)
              // LoadingAnimationWidget.discreteCircle(
              //   color: Colors.blueAccent,
              //   size: 150,
              //   secondRingColor: Colors.green,
              //   thirdRingColor: Colors.red,
              // ),
              Center(
                child: Image.asset(
                  'assets/IA7jp.gif',
                  width: double.infinity,
                ),
              ),
            if (!_isLoading)
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: [
                    buildCard(
                        "GET", Icons.download, Colors.teal, getAllDeviceData),
                    buildCard("By ID's", Icons.search, Colors.blue,
                        getDeviceDataByID),
                    buildCard(
                        "SINGLE", Icons.person, Colors.green, getSingleData),
                    buildCard(
                        "POST", Icons.upload, Colors.orange, postDeviceData),
                    buildCard("PUT", Icons.edit, Colors.pink, putDeviceData),
                    buildCard(
                        "DELETE", Icons.delete, Colors.red, deleteDeviceData),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(
      String title, IconData icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // API Functions
  //done
  void getAllDeviceData() async {
    setState(() {
      _isLoading = true;
    });

    Uri url = Uri.parse("https://api.restful-api.dev/objects");
    http.Response responseData = await http.get(url);
    log("Get All Devices Status Code: ${responseData.statusCode}");

    if (responseData.statusCode == 200) {
      List<dynamic> jsonData = json.decode(responseData.body);
      log("$jsonData");

      setState(() {
        _isLoading = false;
      });

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GetScreen(deviceData: jsonData)));
    } else {
      log("Error: ${responseData.statusCode}");
      CustomSnackBar.showCustomSnackbar(
          duration: Duration(seconds: 2),
          message: "Failed to fetch data.",
          context: context,
          isError: true);
    }
  }

//done
  void getDeviceDataByID() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MultiSelectUI(),
      ),
    );
  }

//done
  void getSingleData() async {
    try {
      String? idd = await _showIdInputDialog(context);
      log("Entered ID: $idd");

      int? id = int.tryParse(idd ?? '');
      if (id == null) return;
      setState(() {
        _isLoading = true;
      });

      Uri url = Uri.parse("https://api.restful-api.dev/objects/$id");
      http.Response responseData = await http.get(url);
      log("Get Single Data Status Code: ${responseData.statusCode}");

      if (responseData.statusCode == 200) {
        Map<String, dynamic> jsonData = json.decode(responseData.body);
        log("Fetched Data: $jsonData");

        String img = ListscreenDemo.fetchImageById(id);
        log("Fetched Image URL: $img");

        if (img.isNotEmpty) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DeviceDetailScreen(
                device: jsonData,
                imgURL: img,
              ),
            ),
          );
        } else {
          log("Device data or image URL is empty.");
          CustomSnackBar.showCustomSnackbar(
              duration: Duration(seconds: 2),
              message: "Error fetching device details or image.",
              context: context,
              isError: true);
        }
      } else {
        log("Error: ${responseData.statusCode}");
        CustomSnackBar.showCustomSnackbar(
            duration: Duration(seconds: 2),
            message: "Failed to fetch data.",
            context: context,
            isError: true);
      }

      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      log("Error: $e");
      CustomSnackBar.showCustomSnackbar(
          message: "An error occurred.",
          duration: Duration(seconds: 2),
          context: context,
          isError: true);
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<String?> _showIdInputDialog(BuildContext context) {
    final TextEditingController idController = TextEditingController();

    return showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Enter Device ID"),
          content: TextField(
            controller: idController,
            keyboardType: TextInputType.text,
            decoration:
                InputDecoration(hintText: "Enter ID (e.g., 7 or abc123)"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                String id = idController.text.trim();

                if (id.isNotEmpty) {
                  if (RegExp(r'^[a-zA-Z0-9]+$').hasMatch(id)) {
                    Navigator.pop(context, id);
                  } else {
                    CustomSnackBar.showCustomSnackbar(
                        message: "Please enter a valid  ID.",
                        context: context,
                        duration: Duration(seconds: 2),
                        isError: true);
                  }
                } else {
                  CustomSnackBar.showCustomSnackbar(
                      message: "Please enter a valid  ID.",
                      context: context,
                      duration: Duration(seconds: 2),
                      isError: true);
                }
              },
              child: Text("Fetch Data"),
            ),
          ],
        );
      },
    );
  }

//done
  void postDeviceData() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PostDeviceDataScreen(),
      ),
    );
  }

//done
  void putDeviceData() async {
    String? id = await _showIdInputDialog(context);
    log("$id");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditDataScreen(id: id),
      ),
    );
  }

//done
  void deleteDeviceData() async {
    String? id = await _showIdInputDialog(context);

    if (id == null) return;

    setState(() {
      _isLoading = true;
    });

    Uri url = Uri.parse("https://api.restful-api.dev/objects/$id");

    http.Response response = await http.delete(url);
    log("Delete Device Data Status Code: ${response.statusCode}");

    if (response.statusCode == 200) {
      CustomSnackBar.showCustomSnackbar(
          message: "ID : $id Deleted Successfully",
          context: context,
          duration: Duration(seconds: 2),
          isError: false);
    } else {
      CustomSnackBar.showCustomSnackbar(
          message: "Failed to Delete Data",
          context: context,
          duration: Duration(seconds: 2),
          isError: true);
    }

    setState(() {
      _isLoading = false;
    });
  }
}
