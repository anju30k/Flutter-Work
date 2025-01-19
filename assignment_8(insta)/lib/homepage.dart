import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool like1 = false;
  bool like2 = false;
  bool like3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Instagram',
          style: TextStyle(
              fontStyle: FontStyle.italic, color: Colors.white, fontSize: 30),
        ),
        actions: const [
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color.fromARGB(255, 6, 5, 5),
                  child: Image.network(
                    "https://instasize.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fmunkee%2Fimage%2Fupload%2Fv1677712288%2Finstasize-website%2Flearn%2Flrm1ehuepxxgjntqr1hx.webp&w=3840&q=75",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like1 = !like1;
                        });
                      },
                      icon: like1
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Color.fromARGB(255, 240, 2, 2),
                            )
                          : const Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.black,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_border)),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color.fromARGB(255, 6, 5, 5),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1493246507139-91e8fad9978e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8NGslMjBsYW5kc2NhcGV8ZW58MHx8MHx8fDA%3D",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like2 = !like2;
                        });
                      },
                      icon: like2
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Color.fromARGB(255, 240, 2, 2),
                            )
                          : const Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.black,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_border_outlined)),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color.fromARGB(255, 6, 5, 5),
                  child: Image.network(
                    "https://instasize.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fmunkee%2Fimage%2Fupload%2Fv1677712288%2Finstasize-website%2Flearn%2Flrm1ehuepxxgjntqr1hx.webp&w=3840&q=75",
                    width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          like3 = !like3;
                        });
                      },
                      icon: like3
                          ? const Icon(
                              Icons.favorite_rounded,
                              color: Color.fromARGB(255, 240, 2, 2),
                            )
                          : const Icon(
                              Icons.favorite_outline_outlined,
                              color: Colors.black,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.comment_outlined,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_border_outlined)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
