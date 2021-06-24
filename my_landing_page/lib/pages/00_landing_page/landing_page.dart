import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/00_landing_page/hi_intro.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Material(
      child: Stack(
        children: [
          Expanded(
            child: Container(
              color: Colors.amber,
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/BG_Landing.jpg",
              // width: width,
              // height: height,
              // alignment: Alignment(-width * 0.5, 0),
              // fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                // alignment: Alignment.centerLeft,
                flex: 4,
                child: HiIntro(),
              ),
              Expanded(
                flex: 5,
                child: GestureDetector(
                  child: CustomPaint(
                    size: Size(200, height),
                    painter: SliderPainter(),
                  ),
                  // Image.asset(
                  //   "assets/WhiteButtonSlider.png",
                  // alignment: Alignment.centerRight,
                  // // width: width * 2,
                  // height: height,
                  //   fit: BoxFit.fill,
                  // ),
                  onTap: () {
                    debugPrint("GO TO WORK PAGE!!");
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Copy this CustomPainter code to the Bottom of the File
class SliderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2093249, size.height * 0.9996533);
    path_0.cubicTo(
        size.width * 0.2182480,
        size.height * 0.9822700,
        size.width * 0.2284923,
        size.height * 0.9656300,
        size.width * 0.2419330,
        size.height * 0.9508133);
    path_0.cubicTo(
        size.width * 0.2488290,
        size.height * 0.9432100,
        size.width * 0.2555548,
        size.height * 0.9354433,
        size.width * 0.2628778,
        size.height * 0.9282100);
    path_0.cubicTo(
        size.width * 0.2701285,
        size.height * 0.9210367,
        size.width * 0.2777339,
        size.height * 0.9141100,
        size.width * 0.2857267,
        size.height * 0.9076433);
    path_0.cubicTo(
        size.width * 0.3084235,
        size.height * 0.8892767,
        size.width * 0.3325176,
        size.height * 0.8724733,
        size.width * 0.3559819,
        size.height * 0.8549667);
    path_0.cubicTo(
        size.width * 0.3764597,
        size.height * 0.8396867,
        size.width * 0.3966118,
        size.height * 0.8240233,
        size.width * 0.4164814,
        size.height * 0.8080733);
    path_0.cubicTo(
        size.width * 0.4309683,
        size.height * 0.7964400,
        size.width * 0.4437828,
        size.height * 0.7832233,
        size.width * 0.4561484,
        size.height * 0.7696633);
    path_0.cubicTo(
        size.width * 0.4712217,
        size.height * 0.7531400,
        size.width * 0.4850715,
        size.height * 0.7357900,
        size.width * 0.4981756,
        size.height * 0.7179067);
    path_0.cubicTo(
        size.width * 0.5099584,
        size.height * 0.7018200,
        size.width * 0.5210498,
        size.height * 0.6853233,
        size.width * 0.5311240,
        size.height * 0.6682967);
    path_0.cubicTo(
        size.width * 0.5476163,
        size.height * 0.6404200,
        size.width * 0.5602570,
        size.height * 0.6111300,
        size.width * 0.5665484,
        size.height * 0.5797733);
    path_0.cubicTo(
        size.width * 0.5681629,
        size.height * 0.5717333,
        size.width * 0.5691367,
        size.height * 0.5635500,
        size.width * 0.5697665,
        size.height * 0.5553867);
    path_0.cubicTo(
        size.width * 0.5703819,
        size.height * 0.5474433,
        size.width * 0.5706498,
        size.height * 0.5394367,
        size.width * 0.5702371,
        size.height * 0.5314867);
    path_0.cubicTo(
        size.width * 0.5696290,
        size.height * 0.5196700,
        size.width * 0.5677719,
        size.height * 0.5079500,
        size.width * 0.5650063,
        size.height * 0.4963633);
    path_0.cubicTo(
        size.width * 0.5595367,
        size.height * 0.4734200,
        size.width * 0.5506425,
        size.height * 0.4515600,
        size.width * 0.5399167,
        size.height * 0.4303367);
    path_0.cubicTo(
        size.width * 0.5309466,
        size.height * 0.4126000,
        size.width * 0.5196778,
        size.height * 0.3960833,
        size.width * 0.5065158,
        size.height * 0.3807133);
    path_0.cubicTo(
        size.width * 0.5013140,
        size.height * 0.3746367,
        size.width * 0.4955656,
        size.height * 0.3689433,
        size.width * 0.4898498,
        size.height * 0.3632533);
    path_0.cubicTo(
        size.width * 0.4845538,
        size.height * 0.3579800,
        size.width * 0.4789683,
        size.height * 0.3529633,
        size.width * 0.4735348,
        size.height * 0.3478167);
    path_0.cubicTo(
        size.width * 0.4645249,
        size.height * 0.3392767,
        size.width * 0.4544000,
        size.height * 0.3319467,
        size.width * 0.4440833,
        size.height * 0.3248300);
    path_0.cubicTo(
        size.width * 0.4292923,
        size.height * 0.3146267,
        size.width * 0.4141900,
        size.height * 0.3048033,
        size.width * 0.3979584,
        size.height * 0.2966400);
    path_0.cubicTo(
        size.width * 0.3807928,
        size.height * 0.2880033,
        size.width * 0.3633484,
        size.height * 0.2798200,
        size.width * 0.3459475,
        size.height * 0.2715833);
    path_0.cubicTo(
        size.width * 0.3290860,
        size.height * 0.2636033,
        size.width * 0.3115294,
        size.height * 0.2570367,
        size.width * 0.2941647,
        size.height * 0.2500700);
    path_0.cubicTo(
        size.width * 0.2746353,
        size.height * 0.2422367,
        size.width * 0.2553665,
        size.height * 0.2338700,
        size.width * 0.2359891,
        size.height * 0.2257233);
    path_0.cubicTo(
        size.width * 0.2255204,
        size.height * 0.2213267,
        size.width * 0.2150552,
        size.height * 0.2169100,
        size.width * 0.2045937,
        size.height * 0.2124933);
    path_0.cubicTo(
        size.width * 0.1904941,
        size.height * 0.2065433,
        size.width * 0.1769376,
        size.height * 0.1996467,
        size.width * 0.1637068,
        size.height * 0.1922400);
    path_0.cubicTo(
        size.width * 0.1419837,
        size.height * 0.1800767,
        size.width * 0.1212778,
        size.height * 0.1665433,
        size.width * 0.1019222,
        size.height * 0.1513500);
    path_0.cubicTo(
        size.width * 0.08739910,
        size.height * 0.1399467,
        size.width * 0.07349140,
        size.height * 0.1278900,
        size.width * 0.06119095,
        size.height * 0.1144100);
    path_0.cubicTo(
        size.width * 0.05336833,
        size.height * 0.1058467,
        size.width * 0.04667511,
        size.height * 0.09650000,
        size.width * 0.04040181,
        size.height * 0.08691000);
    path_0.cubicTo(
        size.width * 0.03128688,
        size.height * 0.07297000,
        size.width * 0.02400724,
        size.height * 0.05825667,
        size.width * 0.01860633,
        size.height * 0.04277333);
    path_0.cubicTo(
        size.width * 0.01592036,
        size.height * 0.03507667,
        size.width * 0.01330317,
        size.height * 0.02734667,
        size.width * 0.01113484,
        size.height * 0.01951333);
    path_0.cubicTo(
        size.width * 0.009889593,
        size.height * 0.01502667,
        size.width * 0.009596380,
        size.height * 0.01031000,
        size.width * 0.008904977,
        size.height * 0.005693333);
    path_0.cubicTo(
        size.width * 0.008655204,
        size.height * 0.004010000,
        size.width * 0.008485068,
        size.height * 0.002316667,
        size.width * 0.008278733,
        size.height * 0.0006233333);
    path_0.cubicTo(
        size.width * 0.3388923,
        size.height * 0.0006233333,
        size.width * 0.6695059,
        size.height * 0.0006233333,
        size.width * 1.000119,
        size.height * 0.0006233333);
    path_0.cubicTo(
        size.width * 1.000181,
        size.height * 0.001876667,
        size.width * 1.000290,
        size.height * 0.003126667,
        size.width * 1.000290,
        size.height * 0.004380000);
    path_0.cubicTo(
        size.width * 1.000304,
        size.height * 0.3348867,
        size.width * 1.000304,
        size.height * 0.6653900,
        size.width * 1.000290,
        size.height * 0.9958933);
    path_0.cubicTo(
        size.width * 1.000290,
        size.height * 0.9971500,
        size.width * 1.000181,
        size.height * 0.9984000,
        size.width * 1.000119,
        size.height * 0.9996567);
    path_0.cubicTo(
        size.width * 0.7365249,
        size.height * 0.9996533,
        size.width * 0.4729267,
        size.height * 0.9996533,
        size.width * 0.2093249,
        size.height * 0.9996533);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4833303, size.height * 0.5185033);
    path_1.cubicTo(
        size.width * 0.4783276,
        size.height * 0.5119033,
        size.width * 0.4734443,
        size.height * 0.5054433,
        size.width * 0.4685430,
        size.height * 0.4989867);
    path_1.cubicTo(
        size.width * 0.4536905,
        size.height * 0.4794200,
        size.width * 0.4388597,
        size.height * 0.4598433,
        size.width * 0.4239710,
        size.height * 0.4403000);
    path_1.cubicTo(
        size.width * 0.4225701,
        size.height * 0.4384633,
        size.width * 0.4216688,
        size.height * 0.4366367,
        size.width * 0.4216434,
        size.height * 0.4343400);
    path_1.cubicTo(
        size.width * 0.4216253,
        size.height * 0.4327900,
        size.width * 0.4221176,
        size.height * 0.4316800,
        size.width * 0.4234679,
        size.height * 0.4308533);
    path_1.cubicTo(
        size.width * 0.4282172,
        size.height * 0.4279467,
        size.width * 0.4328796,
        size.height * 0.4249100,
        size.width * 0.4377448,
        size.height * 0.4221733);
    path_1.cubicTo(
        size.width * 0.4413249,
        size.height * 0.4201567,
        size.width * 0.4430986,
        size.height * 0.4206700,
        size.width * 0.4455819,
        size.height * 0.4238267);
    path_1.cubicTo(
        size.width * 0.4672434,
        size.height * 0.4514100,
        size.width * 0.4888796,
        size.height * 0.4790133,
        size.width * 0.5106027,
        size.height * 0.5065500);
    path_1.cubicTo(
        size.width * 0.5129701,
        size.height * 0.5095567,
        size.width * 0.5140561,
        size.height * 0.5128400,
        size.width * 0.5143928,
        size.height * 0.5163933);
    path_1.cubicTo(
        size.width * 0.5144941,
        size.height * 0.5174667,
        size.width * 0.5141068,
        size.height * 0.5186467,
        size.width * 0.5136615,
        size.height * 0.5196800);
    path_1.cubicTo(
        size.width * 0.5131294,
        size.height * 0.5209433,
        size.width * 0.5123222,
        size.height * 0.5221200,
        size.width * 0.5116054,
        size.height * 0.5233200);
    path_1.cubicTo(
        size.width * 0.4949104,
        size.height * 0.5512233,
        size.width * 0.4782009,
        size.height * 0.5791267,
        size.width * 0.4615348,
        size.height * 0.6070433);
    path_1.cubicTo(
        size.width * 0.4607674,
        size.height * 0.6083200,
        size.width * 0.4602425,
        size.height * 0.6097133,
        size.width * 0.4596525,
        size.height * 0.6110733);
    path_1.cubicTo(
        size.width * 0.4587403,
        size.height * 0.6132033,
        size.width * 0.4550697,
        size.height * 0.6147633,
        size.width * 0.4528290,
        size.height * 0.6136633);
    path_1.cubicTo(
        size.width * 0.4475765,
        size.height * 0.6110933,
        size.width * 0.4423638,
        size.height * 0.6084300,
        size.width * 0.4372851,
        size.height * 0.6055833);
    path_1.cubicTo(
        size.width * 0.4341321,
        size.height * 0.6038133,
        size.width * 0.4336941,
        size.height * 0.6006167,
        size.width * 0.4357466,
        size.height * 0.5972233);
    path_1.cubicTo(
        size.width * 0.4507765,
        size.height * 0.5723800,
        size.width * 0.4658100,
        size.height * 0.5475433,
        size.width * 0.4808398,
        size.height * 0.5227067);
    path_1.cubicTo(
        size.width * 0.4816181,
        size.height * 0.5214133,
        size.width * 0.4823819,
        size.height * 0.5201033,
        size.width * 0.4833303,
        size.height * 0.5185033);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
