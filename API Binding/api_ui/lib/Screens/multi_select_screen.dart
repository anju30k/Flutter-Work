import 'dart:convert';
import 'dart:developer';
//import 'package:assignment47api_ui/Screens/get_screen.dart';
import 'package:assignmnet47_api_ui/Screens/get_screen.dart';
import 'package:assignmnet47_api_ui/Screens/snackbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MultiSelectUI extends StatefulWidget {
  const MultiSelectUI({super.key});

  @override
  MultiSelectUIState createState() => MultiSelectUIState();
}

class MultiSelectUIState extends State<MultiSelectUI> {
  bool _isLoading = false;
  List<int> selectedIds = [];
  List<int> allIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  void getDeviceDataByIDnew() async {
    if (selectedIds.isEmpty) {
      CustomSnackBar.showCustomSnackbar(
        message: "Please select at least one ID",
        context: context,
        duration: Duration(seconds: 2),
         isError: true
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    String idsQuery = selectedIds.map((id) => 'id=$id').join('&');
    Uri url = Uri.parse("https://api.restful-api.dev/objects?$idsQuery");

    try {
      http.Response responseData = await http.get(url);

      if (responseData.statusCode == 200) {
        List<dynamic> jsonData = json.decode(responseData.body);
        log("Fetched Data: $jsonData");

        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => GetScreen(deviceData: jsonData)));

        setState(() {
          _isLoading = false;
        });
      } else {
        throw Exception("Failed to fetch data");
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
      });

      CustomSnackBar.showCustomSnackbar(
        message: "Error: $e.",
        context: context,
        duration: Duration(seconds: 2),
         isError: true
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Multiple-Select",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
         iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select IDs to fetch data:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: allIds.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: CheckboxListTile(
                      title: Text(
                        "ID: ${allIds[index]}",
                        style: TextStyle(fontSize: 16),
                      ),
                      value: selectedIds.contains(allIds[index]),
                      onChanged: (bool? value) {
                        setState(() {
                          if (value == true) {
                            selectedIds.add(allIds[index]);
                          } else {
                            selectedIds.remove(allIds[index]);
                          }
                        });
                      },
                      activeColor: Colors.deepPurple,
                      checkColor: Colors.white,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: () {
                  if (selectedIds.isNotEmpty) {
                    getDeviceDataByIDnew();
                  } else {
                    CustomSnackBar.showCustomSnackbar(
                      message: "Please select at least one field.",
                      context: context,
                      duration: Duration(seconds: 2),
                       isError: true
                    );
                  }
                },
                child: _isLoading
                    ? CircularProgressIndicator()
                    : Text(
                        "Fetch Data",
                        style: TextStyle(color: Colors.white),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
