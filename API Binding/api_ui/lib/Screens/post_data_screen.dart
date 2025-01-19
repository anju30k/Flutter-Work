import 'package:assignmnet47_api_ui/Screens/post_user_data.dart';
import 'package:assignmnet47_api_ui/Screens/snackbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

class PostDeviceDataScreen extends StatefulWidget {
  const PostDeviceDataScreen({super.key});

  @override
  _PostDeviceDataScreenState createState() => _PostDeviceDataScreenState();
}

class _PostDeviceDataScreenState extends State<PostDeviceDataScreen> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _yearController = TextEditingController();
  final _priceController = TextEditingController();
  File? _imageFile;
  final _picker = ImagePicker();

  // Function to post the device data
  void postDeviceData() async {
    if (_formKey.currentState?.validate() ?? false) {
      if (_imageFile == null) {
        CustomSnackBar.showCustomSnackbar(
            duration: Duration(seconds: 2),
            message: "Please pick an image before posting data.",
            context: context,
            isError: true);
        return;
      }

      setState(() {
        _isLoading = true;
      });

      Uri url = Uri.parse("https://api.restful-api.dev/objects");

      int? parsedYear = int.tryParse(_yearController.text);
      double? parsedPrice = double.tryParse(_priceController.text);

      if (parsedYear == null || parsedPrice == null) {
        CustomSnackBar.showCustomSnackbar(
            duration: Duration(seconds: 2),
            message: "Please enter valid numbers for Year and Price.",
            context: context,
            isError: true);
        setState(() {
          _isLoading = false;
        });
        return;
      }

      Map<String, dynamic> deviceData = {
        "name": _nameController.text,
        "data": {
          "year": parsedYear,
          "price": parsedPrice,
        }
      };

      log("$deviceData");

      try {
        http.Response response = await http.post(
          url,
          headers: {"content-type": "application/json"},
          body: json.encode(deviceData),
        );

        log(response.body);

        CustomSnackBar.showCustomSnackbar(
            duration: Duration(seconds: 2),
            message: "Data posted successfully",
            context: context,
            isError: false);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => DisplayDeviceDataScreen(
                response: response.body, imageFile: _imageFile),
          ),
        );
        _nameController.clear();
        _yearController.clear();
        _priceController.clear();
      } catch (e) {
        CustomSnackBar.showCustomSnackbar(
            duration: Duration(seconds: 2),
            message: "Failed to post data: $e",
            context: context,
            isError: true);
      }

      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
      log("Image picked: ${_imageFile?.path}");
    }
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    TextInputType keyboardType = TextInputType.text,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        ),
        keyboardType: keyboardType,
        validator: validator,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Device Data",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTextField(
                  controller: _nameController,
                  label: 'Device Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a device name';
                    }
                    return null;
                  },
                ),
                _buildTextField(
                  controller: _yearController,
                  label: 'Year',
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the year';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Please enter a valid number';
                    }
                    return null;
                  },
                ),
                _buildTextField(
                  controller: _priceController,
                  label: 'Price',
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the price';
                    }
                    if (double.tryParse(value) == null) {
                      return 'Please enter a valid price';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: _pickImage,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                      ),
                      child: Text('Pick Image',
                          style: TextStyle(color: Colors.white)),
                    ),
                    _isLoading
                        ? Center(child: CircularProgressIndicator())
                        : Center(
                            child: ElevatedButton(
                              onPressed: postDeviceData,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                              ),
                              child: Text('Post Data',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
