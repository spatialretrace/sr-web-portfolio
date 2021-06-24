import 'package:flutter/material.dart';

class CurveNFace extends StatelessWidget {
  const CurveNFace({
    Key key,
    @required this.widgetFlex,
  }) : super(key: key);
  final int widgetFlex;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Expanded(
      flex: widgetFlex,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        // padding: EdgeInsets.only(right: 50),
        // color: Colors.white,
        child: CustomPaint(
          size: Size(300, height * 1.5),
          painter: WeirdCurvePainter(),
        ),
      ),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class WeirdCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1692358, size.height * 0.0004333333);
    path_0.cubicTo(
        size.width * 0.1741887,
        size.height * 0.007683333,
        size.width * 0.1789906,
        size.height * 0.01494667,
        size.width * 0.1841321,
        size.height * 0.02218333);
    path_0.cubicTo(
        size.width * 0.2029057,
        size.height * 0.04865333,
        size.width * 0.2371321,
        size.height * 0.07276000,
        size.width * 0.2755283,
        size.height * 0.09621000);
    path_0.cubicTo(
        size.width * 0.2949434,
        size.height * 0.1080667,
        size.width * 0.3173113,
        size.height * 0.1192300,
        size.width * 0.3401321,
        size.height * 0.1303000);
    path_0.cubicTo(
        size.width * 0.3891981,
        size.height * 0.1540900,
        size.width * 0.4386038,
        size.height * 0.1778000,
        size.width * 0.4862453,
        size.height * 0.2019400);
    path_0.cubicTo(
        size.width * 0.5195566,
        size.height * 0.2188233,
        size.width * 0.5489623,
        size.height * 0.2366033,
        size.width * 0.5740472,
        size.height * 0.2552467);
    path_0.cubicTo(
        size.width * 0.5999623,
        size.height * 0.2745067,
        size.width * 0.6098019,
        size.height * 0.2948000,
        size.width * 0.6064906,
        size.height * 0.3159333);
    path_0.cubicTo(
        size.width * 0.6046698,
        size.height * 0.3275900,
        size.width * 0.5966509,
        size.height * 0.3388733,
        size.width * 0.5863585,
        size.height * 0.3499367);
    path_0.cubicTo(
        size.width * 0.5721509,
        size.height * 0.3652233,
        size.width * 0.5572925,
        size.height * 0.3804367,
        size.width * 0.5436132,
        size.height * 0.3957833);
    path_0.cubicTo(
        size.width * 0.5375660,
        size.height * 0.4025600,
        size.width * 0.5328774,
        size.height * 0.4095233,
        size.width * 0.5290566,
        size.height * 0.4165033);
    path_0.cubicTo(
        size.width * 0.5235943,
        size.height * 0.4264567,
        size.width * 0.5265283,
        size.height * 0.4364233,
        size.width * 0.5314811,
        size.height * 0.4463367);
    path_0.cubicTo(
        size.width * 0.5416981,
        size.height * 0.4667600,
        size.width * 0.5663962,
        size.height * 0.4849733,
        size.width * 0.5989623,
        size.height * 0.5020300);
    path_0.cubicTo(
        size.width * 0.6326509,
        size.height * 0.5196700,
        size.width * 0.6734245,
        size.height * 0.5351400,
        size.width * 0.7162925,
        size.height * 0.5499567);
    path_0.cubicTo(
        size.width * 0.7418774,
        size.height * 0.5588033,
        size.width * 0.7681321,
        size.height * 0.5674100,
        size.width * 0.7939245,
        size.height * 0.5761867);
    path_0.cubicTo(
        size.width * 0.8262925,
        size.height * 0.5872000,
        size.width * 0.8585943,
        size.height * 0.5982633,
        size.width * 0.8860472,
        size.height * 0.6108733);
    path_0.cubicTo(
        size.width * 0.8980943,
        size.height * 0.6164100,
        size.width * 0.9090094,
        size.height * 0.6223333,
        size.width * 0.9186604,
        size.height * 0.6284300);
    path_0.cubicTo(
        size.width * 0.9410755,
        size.height * 0.6425900,
        size.width * 0.9451226,
        size.height * 0.6577333,
        size.width * 0.9361604,
        size.height * 0.6735533);
    path_0.cubicTo(
        size.width * 0.9267170,
        size.height * 0.6902333,
        size.width * 0.9056132,
        size.height * 0.7050333,
        size.width * 0.8789717,
        size.height * 0.7189267);
    path_0.cubicTo(
        size.width * 0.8643962,
        size.height * 0.7265333,
        size.width * 0.8483962,
        size.height * 0.7338167,
        size.width * 0.8324245,
        size.height * 0.7410800);
    path_0.cubicTo(
        size.width * 0.7970660,
        size.height * 0.7571467,
        size.width * 0.7609245,
        size.height * 0.7730033,
        size.width * 0.7259340,
        size.height * 0.7891700);
    path_0.cubicTo(
        size.width * 0.7113396,
        size.height * 0.7959100,
        size.width * 0.6982547,
        size.height * 0.8030933,
        size.width * 0.6856321,
        size.height * 0.8103233);
    path_0.cubicTo(
        size.width * 0.6731132,
        size.height * 0.8175000,
        size.width * 0.6649811,
        size.height * 0.8254000,
        size.width * 0.6588679,
        size.height * 0.8335667);
    path_0.cubicTo(
        size.width * 0.6523868,
        size.height * 0.8422167,
        size.width * 0.6520943,
        size.height * 0.8508000,
        size.width * 0.6583962,
        size.height * 0.8594700);
    path_0.cubicTo(
        size.width * 0.6666792,
        size.height * 0.8708700,
        size.width * 0.6784811,
        size.height * 0.8817967,
        size.width * 0.6920566,
        size.height * 0.8925233);
    path_0.cubicTo(
        size.width * 0.7005566,
        size.height * 0.8992333,
        size.width * 0.7095660,
        size.height * 0.9058967,
        size.width * 0.7166038,
        size.height * 0.9128067);
    path_0.cubicTo(
        size.width * 0.7330755,
        size.height * 0.9290000,
        size.width * 0.7374528,
        size.height * 0.9457267,
        size.width * 0.7306415,
        size.height * 0.9627600);
    path_0.cubicTo(
        size.width * 0.7263302,
        size.height * 0.9735667,
        size.width * 0.7215189,
        size.height * 0.9843567,
        size.width * 0.7163679,
        size.height * 0.9951267);
    path_0.cubicTo(
        size.width * 0.7145849,
        size.height * 0.9988467,
        size.width * 0.7111038,
        size.height * 1.002470,
        size.width * 0.7084151,
        size.height * 1.006143);
    path_0.cubicTo(
        size.width * 0.4726792,
        size.height * 1.006143,
        size.width * 0.2369434,
        size.height * 1.006143,
        size.width * 0.001226415,
        size.height * 1.006143);
    path_0.cubicTo(
        size.width * 0.001226415,
        size.height * 0.6709067,
        size.width * 0.001226415,
        size.height * 0.3356700,
        size.width * 0.001226415,
        size.height * 0.0004333333);
    path_0.cubicTo(
        size.width * 0.05722642,
        size.height * 0.0004333333,
        size.width * 0.1132358,
        size.height * 0.0004333333,
        size.width * 0.1692358,
        size.height * 0.0004333333);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white;
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
