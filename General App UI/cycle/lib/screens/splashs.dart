import 'package:action_slider/action_slider.dart';
import 'package:assignment_49cycle/screens/homes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashs extends StatelessWidget {
  const Splashs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      body: Stack(
        children: [
          Positioned(
            top: 300,
            left: -15,
            child: SizedBox(
              height: 597,
              width: 445,
              child: CustomPaint(
                painter: Mypainter(),
              ),
            ),
          ),
          Positioned(
              top: 100,
              left: 220,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "EXTREME",
                  style: GoogleFonts.allertaStencil(
                      textStyle: const TextStyle(
                          fontSize: 150,
                          color: Color.fromARGB(
                            50,
                            255,
                            255,
                            255,
                          ))),
                ),
              )),
          Positioned(
              top: 55,
              left: 150,
              child: Image.asset("assets/images/image 6.png")),
          Positioned(top: 270, child: Image.asset("assets/images/pngwing.png")),
          Positioned(
            top: 730,
            left: 160,
            child: ActionSlider.standard(
              boxShadow: const [
                BoxShadow(
                    blurRadius: 4,
                    blurStyle: BlurStyle.outer,
                    color: Color.fromARGB(25, 0, 0, 0))
              ],
              backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
              onTap: (controller, pos) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
              customForegroundBuilder: (p0, p1, p2) {
                return Container(
                  height: 70,
                  width: 70,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(239, 186, 51, 1),
                            blurRadius: 5,
                            spreadRadius: 5)
                      ],
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(75, 76, 237, 1)),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                );
              },
              width: 250,
              child: const Text(
                'Get Start',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              action: (controller) async {
                controller.loading();
                await Future.delayed(const Duration(seconds: 1));
                controller.success();
                await Future.delayed(const Duration(seconds: 1));
                controller.reset();
              },
            ),
          )
        ],
      ),
    );
  }
}

class Mypainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path path1 = Path();
    path1.moveTo(size.width, 0);
    /*Explanation:
      # moveTo sets the starting point of the path.
      # It doesn't draw anything but just positions the "pen" at the specified coordinates.
      # size.width represents the width of the canvas, so size.width is the x-coordinate of the top-right corner of the canvas.
      # 0 is the y-coordinate of the top-right corner of the canvas.
      # The path starts at the top-right corner of the canvas. */

    path1.lineTo(0, size.height / 3);
    /*Explanation:
    # lineTo draws a straight line from the current point (the top-right corner) to the specified coordinates.
    # 0 is the x-coordinate, representing the left edge of the canvas.
    # size.height / 3 is the y-coordinate, one-third down from the top edge of the canvas.
    # This line goes from the top-right corner to a point on the left edge, one-third down from the top.
     */

    path1.lineTo(0, size.height);
    /*Explanation:
    # lineTo draws a straight line from the current point (the point one-third down the left edge) to the specified coordinates.
    # 0 is the x-coordinate, still on the left edge.
    # size.height is the y-coordinate, representing the bottom-left corner of the canvas.
    # This line goes from the one-third point on the left edge to the bottom-left corner. */

    path1.lineTo(size.width, size.height);
    /*Explanation:
    # lineTo draws a straight line from the current point (the bottom-left corner) to the specified coordinates.
    # size.width is the x-coordinate, representing the right edge of the canvas.
    # size.height is the y-coordinate, representing the bottom edge of the canvas.
    # This line goes from the bottom-left corner to the bottom-right corner.
     */
    path1.close();
    paint.color = const Color.fromRGBO(75, 76, 237, 1);
    canvas.drawPath(path1, paint);
    /*These commands collectively draw a shape that covers the lower portion of the canvas, 
    starting from the top-right corner, slanting down to one-third down the left side, 
    and then filling the bottom of the canvas. 
    The shape can be visualized as a quadrilateral (trapezoid) covering the described area.
     */
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
