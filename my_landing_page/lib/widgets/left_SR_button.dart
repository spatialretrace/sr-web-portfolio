import 'package:flutter/material.dart';

class LeftArrowButtonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4197500, size.height * 0.5099642);
    path_0.cubicTo(
        size.width * 0.4485417,
        size.height * 0.4876335,
        size.width * 0.4766458,
        size.height * 0.4657764,
        size.width * 0.5048542,
        size.height * 0.4439307);
    path_0.cubicTo(
        size.width * 0.5903333,
        size.height * 0.3777279,
        size.width * 0.6756875,
        size.height * 0.3114913,
        size.width * 0.7613750,
        size.height * 0.2453675);
    path_0.cubicTo(
        size.width * 0.7694375,
        size.height * 0.2391532,
        size.width * 0.7746458,
        size.height * 0.2329728,
        size.width * 0.7747708,
        size.height * 0.2252022);
    path_0.cubicTo(
        size.width * 0.7748750,
        size.height * 0.2199578,
        size.width * 0.7720417,
        size.height * 0.2162022,
        size.width * 0.7642708,
        size.height * 0.2134052);
    path_0.cubicTo(
        size.width * 0.7369167,
        size.height * 0.2035707,
        size.width * 0.7100833,
        size.height * 0.1932963,
        size.width * 0.6821042,
        size.height * 0.1840369);
    path_0.cubicTo(
        size.width * 0.6615000,
        size.height * 0.1772136,
        size.width * 0.6512917,
        size.height * 0.1789505,
        size.width * 0.6370000,
        size.height * 0.1896309);
    path_0.cubicTo(
        size.width * 0.5123333,
        size.height * 0.2829576,
        size.width * 0.3878125,
        size.height * 0.3763520,
        size.width * 0.2627917,
        size.height * 0.4695208);
    path_0.cubicTo(
        size.width * 0.2491667,
        size.height * 0.4796937,
        size.width * 0.2429167,
        size.height * 0.4908027,
        size.width * 0.2409792,
        size.height * 0.5028252);
    path_0.cubicTo(
        size.width * 0.2403958,
        size.height * 0.5064567,
        size.width * 0.2426250,
        size.height * 0.5104492,
        size.width * 0.2451875,
        size.height * 0.5139454);
    path_0.cubicTo(
        size.width * 0.2482500,
        size.height * 0.5182199,
        size.width * 0.2528958,
        size.height * 0.5222010,
        size.width * 0.2570208,
        size.height * 0.5262612);
    path_0.cubicTo(
        size.width * 0.3531042,
        size.height * 0.6206706,
        size.width * 0.4492708,
        size.height * 0.7150800,
        size.width * 0.5451875,
        size.height * 0.8095346);
    path_0.cubicTo(
        size.width * 0.5496042,
        size.height * 0.8138541,
        size.width * 0.5526250,
        size.height * 0.8185684,
        size.width * 0.5560208,
        size.height * 0.8231698);
    path_0.cubicTo(
        size.width * 0.5612708,
        size.height * 0.8303766,
        size.width * 0.5823958,
        size.height * 0.8356548,
        size.width * 0.5952917,
        size.height * 0.8319330);
    path_0.cubicTo(
        size.width * 0.6255208,
        size.height * 0.8232375,
        size.width * 0.6555208,
        size.height * 0.8142263,
        size.width * 0.6847500,
        size.height * 0.8045947);
    path_0.cubicTo(
        size.width * 0.7028958,
        size.height * 0.7986060,
        size.width * 0.7053958,
        size.height * 0.7877903,
        size.width * 0.6936042,
        size.height * 0.7763091);
    path_0.cubicTo(
        size.width * 0.6071250,
        size.height * 0.6922530,
        size.width * 0.5205833,
        size.height * 0.6082195,
        size.width * 0.4341042,
        size.height * 0.5241860);
    path_0.cubicTo(
        size.width * 0.4296042,
        size.height * 0.5198101,
        size.width * 0.4252083,
        size.height * 0.5153890,
        size.width * 0.4197500,
        size.height * 0.5099642);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
