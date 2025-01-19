import 'dart:convert';
import 'dart:io';
import 'package:assignmnet47_api_ui/Screens/snackbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DisplayDeviceDataScreen extends StatelessWidget {
  final String response;
  final File? imageFile;

  const DisplayDeviceDataScreen({
    super.key,
    required this.response,
    required this.imageFile,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> responseData = json.decode(response);

    final id = responseData['id'] ?? 'No ID found';
    final name = responseData['name'] ?? 'No Name found';
    final year = responseData['data']?['year'] ?? 'No Year found';
    final price = responseData['data']?['price'] ?? 'No Price found';
    final timestamp = responseData['createdAt'] ?? 'No timestamp found';

    final yearStr = year is int ? year.toString() : year;
    final priceStr =
        price is double ? price.toStringAsFixed(2) : price.toString();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Device Data",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
        elevation: 4,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (imageFile != null)
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.file(
                      imageFile!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 2,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDataRow("ID", id, isCopyable: true, context: context),
                    _buildDataRow("Name", name, context: context),
                    _buildDataRow("Year", yearStr, context: context),
                    _buildDataRow("Price", "Rs. $priceStr", context: context),
                    _buildDataRow("Timestamp", timestamp, context: context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDataRow(String label, String value,
      {bool isCopyable = false, required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Text(
            "$label: ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          if (isCopyable)
            IconButton(
              icon: Icon(Icons.copy, color: Colors.deepPurple),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: value));
                CustomSnackBar.showCustomSnackbar(
                    message: "Data Copied to Clipboard !",
                    context: context,
                    duration: Duration(seconds: 2),
                    isError: false);
              },
            ),
        ],
      ),
    );
  }
}
