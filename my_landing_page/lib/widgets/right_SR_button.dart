import 'package:flutter/material.dart';

class RightArrowButtonPainter extends CustomPainter {
  RightArrowButtonPainter({
    @required this.buttonColor,
  });
  Color buttonColor;
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5958958, size.height * 0.5099642);
    path_0.cubicTo(
        size.width * 0.5671042,
        size.height * 0.4876335,
        size.width * 0.5390000,
        size.height * 0.4657764,
        size.width * 0.5107917,
        size.height * 0.4439307);
    path_0.cubicTo(
        size.width * 0.4253125,
        size.height * 0.3777279,
        size.width * 0.3399583,
        size.height * 0.3114913,
        size.width * 0.2542708,
        size.height * 0.2453675);
    path_0.cubicTo(
        size.width * 0.2462083,
        size.height * 0.2391532,
        size.width * 0.2410208,
        size.height * 0.2329728,
        size.width * 0.2408750,
        size.height * 0.2252022);
    path_0.cubicTo(
        size.width * 0.2407708,
        size.height * 0.2199578,
        size.width * 0.2436042,
        size.height * 0.2162022,
        size.width * 0.2513750,
        size.height * 0.2134052);
    path_0.cubicTo(
        size.width * 0.2787083,
        size.height * 0.2035707,
        size.width * 0.3055417,
        size.height * 0.1932963,
        size.width * 0.3335417,
        size.height * 0.1840369);
    path_0.cubicTo(
        size.width * 0.3541458,
        size.height * 0.1772136,
        size.width * 0.3643542,
        size.height * 0.1789505,
        size.width * 0.3786458,
        size.height * 0.1896309);
    path_0.cubicTo(
        size.width * 0.5033125,
        size.height * 0.2829576,
        size.width * 0.6278333,
        size.height * 0.3763520,
        size.width * 0.7528542,
        size.height * 0.4695208);
    path_0.cubicTo(
        size.width * 0.7664792,
        size.height * 0.4796937,
        size.width * 0.7727292,
        size.height * 0.4908027,
        size.width * 0.7746667,
        size.height * 0.5028252);
    path_0.cubicTo(
        size.width * 0.7752500,
        size.height * 0.5064567,
        size.width * 0.7730208,
        size.height * 0.5104492,
        size.width * 0.7704583,
        size.height * 0.5139454);
    path_0.cubicTo(
        size.width * 0.7673958,
        size.height * 0.5182199,
        size.width * 0.7627500,
        size.height * 0.5222010,
        size.width * 0.7586250,
        size.height * 0.5262612);
    path_0.cubicTo(
        size.width * 0.6625417,
        size.height * 0.6206706,
        size.width * 0.5663750,
        size.height * 0.7150800,
        size.width * 0.4704583,
        size.height * 0.8095346);
    path_0.cubicTo(
        size.width * 0.4660417,
        size.height * 0.8138541,
        size.width * 0.4630208,
        size.height * 0.8185684,
        size.width * 0.4596250,
        size.height * 0.8231698);
    path_0.cubicTo(
        size.width * 0.4543750,
        size.height * 0.8303766,
        size.width * 0.4332500,
        size.height * 0.8356548,
        size.width * 0.4203542,
        size.height * 0.8319330);
    path_0.cubicTo(
        size.width * 0.3901250,
        size.height * 0.8232375,
        size.width * 0.3601250,
        size.height * 0.8142263,
        size.width * 0.3308958,
        size.height * 0.8045947);
    path_0.cubicTo(
        size.width * 0.3127500,
        size.height * 0.7986060,
        size.width * 0.3102292,
        size.height * 0.7877903,
        size.width * 0.3220417,
        size.height * 0.7763091);
    path_0.cubicTo(
        size.width * 0.4085417,
        size.height * 0.6922530,
        size.width * 0.4950625,
        size.height * 0.6082195,
        size.width * 0.5815625,
        size.height * 0.5241860);
    path_0.cubicTo(
        size.width * 0.5860417,
        size.height * 0.5198101,
        size.width * 0.5904375,
        size.height * 0.5153890,
        size.width * 0.5958958,
        size.height * 0.5099642);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = buttonColor;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
