import 'package:flutter/material.dart';

class Que2 extends StatefulWidget {
  @override
  State createState() => _Que2();
}

class _Que2 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Assignment"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: Colors.amber,
              ),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_IVlGm_QqOEKWcloIk8320F-GmnCbOtPz1OukOF2c7EPB71xRne1BurwJkdT6hawF0XU&usqp=CAU",
                height: 300,
                width: 300,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 20),
            Container(
                height: 70,
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                  child: const Text(
                    "Add to card",
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
