import 'package:flutter/material.dart';

class DeviceDetailScreen extends StatelessWidget {
  final Map<String, dynamic> device;
  final String imgURL;

  const DeviceDetailScreen({
    super.key,
    required this.device,
    required this.imgURL,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Device Details",
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 5.0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  imgURL,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),

             
              Text(
                device['name'] ?? 'Unknown Device',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Device ID: ${device['id'] ?? 'N/A'}',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 10),

         
              if (device['data'] != null) ...[
                const Divider(),
                const SizedBox(height: 10),
                const Text(
                  'Device Specifications:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 10),

                // Display all key-value pairs from the 'data' field
                for (var key in device['data'].keys) ...[
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          key,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            '''${device['data'][key] ?? 'Not available'}''',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],

              if (device['data'] == null) ...[
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.grey[100],
                  child: Text(
                    'No additional details available for this device.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
