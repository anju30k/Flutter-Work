import 'package:assignmnet47_api_ui/Screens/post_user_data.dart';
import 'package:assignmnet47_api_ui/Screens/snackbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

class EditDataScreen extends StatefulWidget {
  final String? id;
  const EditDataScreen({required this.id, super.key});

  @override
  EditDataScreenState createState() => EditDataScreenState();
}

class EditDataScreenState extends State<EditDataScreen> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _yearController = TextEditingController();
  final _priceController = TextEditingController();
  File? _imageFile;
  final _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    if (widget.id != null) {
      _fetchDataById(widget.id!);
    }
  }

  Future<void> _fetchDataById(String id) async {
    setState(() {
      _isLoading = true;
    });

    try {
      final url = Uri.parse("https://api.restful-api.dev/objects/$id");
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        log("Fetched data: $data");

        setState(() {
          _nameController.text = data['name'] ?? '';
          _yearController.text = data['data']?['year']?.toString() ?? '';
          _priceController.text = data['data']?['price']?.toString() ?? '';
        });
      } else {
        CustomSnackBar.showCustomSnackbar(
            duration: const Duration(seconds: 2),
            message: "Failed to fetch data: ${response.statusCode}",
            context: context,
            isError: true);
      }
    } catch (e) {
      CustomSnackBar.showCustomSnackbar(
          duration: const Duration(seconds: 2),
          message: "An error occurred: $e",
          context: context,
          isError: true);
    }

    setState(() {
      _isLoading = false;
    });
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

  void editDeviceData() async {
    if (_formKey.currentState?.validate() ?? false) {
      if (_imageFile == null) {
        CustomSnackBar.showCustomSnackbar(
            duration: const Duration(seconds: 2),
            message: "Please pick an image before editing data",
            context: context,
            isError: true);
        return;
      }

      setState(() {
        _isLoading = true;
      });

      final url = Uri.parse("https://api.restful-api.dev/objects/${widget.id}");

      int? parsedYear = int.tryParse(_yearController.text);
      double? parsedPrice = double.tryParse(_priceController.text);

      if (parsedYear == null || parsedPrice == null) {
        CustomSnackBar.showCustomSnackbar(
            duration: const Duration(seconds: 2),
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

      try {
        final response = await http.put(
          url,
          headers: {"Content-Type": "application/json"},
          body: json.encode(deviceData),
        );

        log(response.body);

        if (response.statusCode == 200) {
          CustomSnackBar.showCustomSnackbar(
              duration: const Duration(seconds: 2),
              message: "Data Edited successfully",
              context: context,
              isError: false);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => DisplayDeviceDataScreen(
                  response: response.body, imageFile: _imageFile),
            ),
          );
        } else {
          CustomSnackBar.showCustomSnackbar(
              duration: const Duration(seconds: 2),
              message: "Failed to edit data: ${response.statusCode}.",
              context: context,
              isError: true);
        }
      } catch (e) {
        CustomSnackBar.showCustomSnackbar(
            duration: const Duration(seconds: 2),
            message: "An error occurred: $e",
            context: context,
            isError: true);
      }

      setState(() {
        _isLoading = false;
      });
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
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
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
        title: const Text(
          "Edit Device Data",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
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
                        validator: (value) => value?.isEmpty ?? true
                            ? 'Please enter a device name'
                            : null,
                      ),
                      _buildTextField(
                        controller: _yearController,
                        label: 'Year',
                        keyboardType: TextInputType.number,
                        validator: (value) => value?.isEmpty ?? true
                            ? 'Please enter the year'
                            : int.tryParse(value!) == null
                                ? 'Please enter a valid number'
                                : null,
                      ),
                      _buildTextField(
                        controller: _priceController,
                        label: 'Price',
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        validator: (value) => value?.isEmpty ?? true
                            ? 'Please enter the price'
                            : double.tryParse(value!) == null
                                ? 'Please enter a valid price'
                                : null,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: _pickImage,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                            ),
                            child: const Text(
                              'Pick Image',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          _isLoading
                              ? const CircularProgressIndicator()
                              : ElevatedButton(
                                  onPressed: editDeviceData,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.deepPurple,
                                  ),
                                  child: const Text(
                                    'Edit Data',
                                    style: TextStyle(color: Colors.white),
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
