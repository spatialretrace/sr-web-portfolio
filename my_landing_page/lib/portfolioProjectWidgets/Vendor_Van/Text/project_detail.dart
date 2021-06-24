import 'package:flutter/material.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({
    Key key,
    @required this.darkTextColor,
    @required this.lightTextColor,
  }) : super(key: key);

  final Color darkTextColor;
  final Color lightTextColor;

  @override
  Widget build(BuildContext context) {
    final double detailFontSize = 16;
    return Expanded(
      flex: 4,
      child: Container(
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text:
                  'In this proposal, food truck design meets furniture design with the help of upcycled industrial debris such as metal sheets, rebars and PVC pipes. The stall\'s dynamic feature is the ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'pull-out stair shelf',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  ' that allows access to rooftop sleeping area covered by a convertible awning. It also helps store ingredients needed to sell the classic dish, the ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'baked potato.\n\n\n',
              style: TextStyle(
                color: lightTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.bold,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  'The stall\'s layout is optimized to suit the quick bodily motions of the vendor while working with ',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: 'each ingredient within arm\'s reach.',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            TextSpan(
              text:
                  ' All electric appliances needed to sustain cooking and sleeping activities are powered by a compact generator-invertor.',
              style: TextStyle(
                color: darkTextColor,
                fontFamily: 'Futura',
                fontSize: detailFontSize,
                fontWeight: FontWeight.w100,
                height: 1.5,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
