import "dart:convert";
import "dart:developer";

import "package:flutter/material.dart";
import "package:http/http.dart " as http;

class ApiBinding extends StatefulWidget {
  const ApiBinding({super.key});

  @override
  State<ApiBinding> createState() => _ApiBindingState();
}

class _ApiBindingState extends State<ApiBinding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API Binding"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:
              //getDeviceData
              postDeviceData),
    );
  }

  // void getDeviceData() async {
  //   Uri url = Uri.parse("https://api.restful-api.dev/objects/7");
  //   http.Response responseData = await http.get(url);
  //   //Future<http.Response> responseD =  http.get(url);
  //   log(responseData.body);
  // }

  void postDeviceData() async {
    Uri url = Uri.parse("https://api.restful-api.dev/objects");

    Map data = {
      "name": "Apple MacBook Pro 16",
      "data": {
        "year": 2019,
        "price": 1849.99,
        "CPU model": "Intel Core i9",
        "Hard disk size": "1 TB"
      }
    };

    http.Response responseData = await http.post(url,
        headers: {"content-type": "Application/json"}, body: json.encode(data));
    //Future<http.Response> responseD =  http.get(url);
    log(responseData.body);
  }
}
