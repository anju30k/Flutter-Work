import 'package:assignmnet47_api_ui/Screens/get_imgdetails.dart';
import 'package:assignmnet47_api_ui/Screens/listscreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GetScreen extends StatelessWidget {
  List<dynamic> deviceData = [];
  GetScreen({super.key, required this.deviceData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "All Device Data",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: deviceData.length,
        itemBuilder: (context, index) {
          int id = deviceData[index]['id'] is int
              ? deviceData[index]['id']
              : int.tryParse(deviceData[index]['id'].toString()) ?? 0;
          String imageUrl = ListscreenDemo.fetchImageById(id);
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DeviceDetailScreen(
                                    device: deviceData[index],
                                    imgURL: imageUrl,
                                  )));
                    },
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(15)),
                      child: Image.network(
                        imageUrl,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            deviceData[index]['name'],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
