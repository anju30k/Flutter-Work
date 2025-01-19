import 'package:flutter/material.dart';

class Netflixpage extends StatelessWidget {
  const Netflixpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          /*title: Image.network(
          "",
        ),*/

          title: const Text("NETFLIX",
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.red,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ))),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Text(
              " Movies",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    color: Colors.black,
                    child: Image.network(
                    "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                    width: 250,
                    height: 400,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  width: 250,
                  height: 400,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg",
                  width: 250,
                  height: 400,
                ),
              ]),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              " Web Series",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.network(
                    "https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg",
                    width: 200,
                    height: 300,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                    width: 250,
                    height: 300,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.network(
                    "https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555",
                    width: 250,
                    height: 300,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              " Most Popular",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc",
                    width: 200,
                    height: 300,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Image.network(
                      "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943",
                      width: 200,
                      height: 250,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Image.network(
                      "https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png",
                      width: 200,
                      height: 250,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
