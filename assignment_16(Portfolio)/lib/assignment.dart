import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _Portfolio();
}

class _Portfolio extends State<Portfolio> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PortFolio"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  (count >= 1)
                      ? const Text(
                          "Name: Anjali Somnath Kumbhar",
                          style: TextStyle(
                              fontSize: 30,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        )
                      : Container(),
                  const SizedBox(
                    height: 20,
                  ),
                  (count >= 2)
                      ? Container(
                          height: 200,
                          width: 180,
                          margin: EdgeInsets.all(10),
                          child: Image.asset(
                            "assets/images/pic.jpg",
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  (count >= 3)
                      ? const Text(
                          "College: SITS , Nahre ",
                          style: TextStyle(
                              fontSize: 30,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        )
                      : Container(),
                  const SizedBox(
                    height: 20,
                  ),
                  (count >= 4)
                      ? Container(
                          height: 180,
                          width: 230,
                          child: Image.network(
                            "data:image/jpeg;base64,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",
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  (count >= 5)
                      ? const Text(
                          "Dream Company:Google",
                          style: TextStyle(
                              fontSize: 30,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        )
                      : Container(),
                  const SizedBox(
                    height: 20,
                  ),
                  (count >= 6)
                      ? Container(
                          height: 180,
                          width: 230,
                          child: Image.network(
                            "data:image/png;base64,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",
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Text("Add"),
      ),
    );
  }
}
