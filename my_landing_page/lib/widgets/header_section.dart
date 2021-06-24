import 'package:flutter/material.dart';
import 'package:my_landing_page/widgets/web_nav.dart';
import 'package:flutter/rendering.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        height: 160,
        child: Center(
          child: CustomPaint(
            size: Size(width, 160),
            painter: CurvedPainter(),
          ),
        ),
      ),
      Column(
        children: [
          SizedBox(
            height: 50,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              child: Container(
                // color: Colors.white,
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 10,
                    color: Colors.black,
                    style: BorderStyle.solid,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/Avatar.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              onTap: () {
                debugPrint("ROUTING BACK TO LANDING PAGE!!!");
                Navigator.pushNamed(context, '/');
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          WebNav(
            navAlignment: MainAxisAlignment.center,
            navTextColor: Colors.white,
            navTextElevation: 3.0,
            navSpacing: 80,
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    ]);
  }
}

//Copy this CustomPainter code to the Bottom of the File
class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0004033333, size.height * 0.2912534);
    path_0.cubicTo(
        size.width * 0.0004033333,
        size.height * 0.1949704,
        size.width * 0.0004033333,
        size.height * 0.09870754,
        size.width * 0.0004033333,
        size.height * 0.002424607);
    path_0.cubicTo(
        size.width * 0.3341800,
        size.height * 0.002424607,
        size.width * 0.6679567,
        size.height * 0.002424607,
        size.width * 1.001727,
        size.height * 0.002424607);
    path_0.cubicTo(
        size.width * 1.001727,
        size.height * 0.1225529,
        size.width * 1.001593,
        size.height * 0.2427011,
        size.width * 1.001840,
        size.height * 0.3627893);
    path_0.cubicTo(
        size.width * 1.001890,
        size.height * 0.3863140,
        size.width * 1.000350,
        size.height * 0.3987176,
        size.width * 0.9972433,
        size.height * 0.4080353);
    path_0.cubicTo(
        size.width * 0.9970033,
        size.height * 0.4087566,
        size.width * 0.9967733,
        size.height * 0.4097385,
        size.width * 0.9965233,
        size.height * 0.4102194);
    path_0.cubicTo(
        size.width * 0.9908967,
        size.height * 0.4207995,
        size.width * 0.9853533,
        size.height * 0.4337642,
        size.width * 0.9796167,
        size.height * 0.4413586);
    path_0.cubicTo(
        size.width * 0.9680000,
        size.height * 0.4567478,
        size.width * 0.9560933,
        size.height * 0.4568079,
        size.width * 0.9442700,
        size.height * 0.4586715);
    path_0.cubicTo(
        size.width * 0.9094167,
        size.height * 0.4641819,
        size.width * 0.8745767,
        size.height * 0.4564673,
        size.width * 0.8397467,
        size.height * 0.4501954);
    path_0.cubicTo(
        size.width * 0.8140933,
        size.height * 0.4455866,
        size.width * 0.7884833,
        size.height * 0.4466887,
        size.width * 0.7629300,
        size.height * 0.4609358);
    path_0.cubicTo(
        size.width * 0.7211867,
        size.height * 0.4842200,
        size.width * 0.6802600,
        size.height * 0.5325118,
        size.width * 0.6405767,
        size.height * 0.6145677);
    path_0.cubicTo(
        size.width * 0.6177567,
        size.height * 0.6617373,
        size.width * 0.5950567,
        size.height * 0.7112714,
        size.width * 0.5725400,
        size.height * 0.7634105);
    path_0.cubicTo(
        size.width * 0.5425433,
        size.height * 0.8328825,
        size.width * 0.5116400,
        size.height * 0.8513175,
        size.width * 0.4799067,
        size.height * 0.8321010);
    path_0.cubicTo(
        size.width * 0.4652133,
        size.height * 0.8231840,
        size.width * 0.4510900,
        size.height * 0.7992987,
        size.width * 0.4373667,
        size.height * 0.7677788);
    path_0.cubicTo(
        size.width * 0.4207267,
        size.height * 0.7295261,
        size.width * 0.4043167,
        size.height * 0.6876666,
        size.width * 0.3877100,
        size.height * 0.6488929);
    path_0.cubicTo(
        size.width * 0.3589167,
        size.height * 0.5816652,
        size.width * 0.3297733,
        size.height * 0.5212504,
        size.width * 0.2995200,
        size.height * 0.4812544);
    path_0.cubicTo(
        size.width * 0.2679767,
        size.height * 0.4395351,
        size.width * 0.2361600,
        size.height * 0.4106001,
        size.width * 0.2038733,
        size.height * 0.4033464);
    path_0.cubicTo(
        size.width * 0.1881500,
        size.height * 0.3998197,
        size.width * 0.1724000,
        size.height * 0.3995191,
        size.width * 0.1566633,
        size.height * 0.3989580);
    path_0.cubicTo(
        size.width * 0.1220867,
        size.height * 0.3977157,
        size.width * 0.08749667,
        size.height * 0.4021841,
        size.width * 0.05295667,
        size.height * 0.3887186);
    path_0.cubicTo(
        size.width * 0.04039333,
        size.height * 0.3838293,
        size.width * 0.02786000,
        size.height * 0.3784591,
        size.width * 0.01576667,
        size.height * 0.3546338);
    path_0.cubicTo(
        size.width * 0.009586667,
        size.height * 0.3424106,
        size.width * 0.003826667,
        size.height * 0.3272818,
        size.width * 0.0004033333,
        size.height * 0.2912534);
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
