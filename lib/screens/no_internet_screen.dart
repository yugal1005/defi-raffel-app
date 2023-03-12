import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SvgPicture.asset(
            'assets/icons/no-internet.svg',
            color: const Color.fromRGBO(22, 33, 62, 1),
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height * 0.332 ,
            width: double.infinity,
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.height * 0.34,double.infinity),
              painter: RPSCustomPainter(),
            ),
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.332,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //       borderRadius: const BorderRadius.only(
          //         topLeft: Radius.circular(200),
          //         topRight: Radius.circular(200),
          //       ),
          //       color: Theme.of(context).primaryColor),
          //   child: const Text("No Internet"),
          // )
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.002778, size.height * 0.1430868);
    path_0.cubicTo(
        size.width * 0.5666667,
        size.height * -0.1109325,
        size.width * 0.1652778,
        size.height * 0.03108241,
        size.width * -0.006944444,
        size.height * 0.1430868);
    path_0.lineTo(size.width * -0.006944444, size.height * 0.9983923);
    path_0.lineTo(size.width * 1.002778, size.height * 0.9983923);
    path_0.lineTo(size.width * 1.002778, size.height * 0.1430868);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff16213E).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
