import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Hello Core2Web",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: (SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "data:image/jpeg;base64,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",
                  width: 150,
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR620Ys7y45FGYX2VgJ3tjdUGMen_siB5uJ6ZbPPvpsrrBz03PNzQ8PW5B6tw&s",
                  width: 150,
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr65gc96DUD_awiaGbBsIuNOGbYZCB3B4lOudtYo_yiuBxZQsWCnUspdJ7HQ&s",
                  width: 150,
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHmpruRdSa-MPti3ShfPUNUYGOtMfLZ23hT5kkxNbZEay-mPKgiez4UlcB_w&s",
                  width: 150,
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsmRHpT-MbgwGgqdYv10W6L78OTD6Nr-03-M1RVc-PRAcY01ebEKx4iGnhJg&s",
                  width: 150,
                  height: 200,
                ),
              ],
            ))),
      ),
    );
  }
}
