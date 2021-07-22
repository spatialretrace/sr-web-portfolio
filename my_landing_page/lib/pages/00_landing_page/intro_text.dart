import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  const IntroText({
    Key key,
    @required this.fontFam,
    @required this.textColor1,
    @required this.textColor2,
    @required this.lineSpacing1,
    @required this.lineSpacing2,
    @required this.fontSize1,
    @required this.fontSize2,
    @required this.fontWeight,
    @required this.letterSpace,
  }) : super(key: key);

  final Color textColor1, textColor2;
  final double lineSpacing1, lineSpacing2;
  final double fontSize1, fontSize2;
  final FontWeight fontWeight;
  final double letterSpace;
  final String fontFam;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 150),
      alignment: Alignment.bottomLeft,
      child: Text.rich(
        TextSpan(children: [
          TextSpan(
            text: '\n\n\nHi, I\'m',
            style: TextStyle(
              color: textColor1,
              fontSize: fontSize1,
              fontFamily: fontFam,
              fontWeight: fontWeight,
              letterSpacing: letterSpace,
              height: 1.5,
            ),
          ),
          TextSpan(
            text: '\nFirdous',
            style: TextStyle(
              color: textColor2,
              fontSize: fontSize2,
              fontFamily: fontFam,
              fontWeight: fontWeight,
              letterSpacing: letterSpace,
              height: 1.5,
            ),
          ),
          TextSpan(
            text: '\nNizar',
            style: TextStyle(
              color: textColor2,
              fontSize: fontSize2,
              fontFamily: fontFam,
              fontWeight: fontWeight,
              letterSpacing: letterSpace,
              height: 1,
            ),
          ),
          TextSpan(
            text: '\n\nand welcome to',
            style: TextStyle(
              color: textColor1,
              fontSize: 26,
              fontFamily: fontFam,
              fontWeight: fontWeight,
              // letterSpacing: letterSpace,
              height: 1.5,
            ),
          ),
          TextSpan(
            text: '\nSpatial Retrace',
            style: TextStyle(
              color: textColor2,
              fontSize: 38,
              fontFamily: fontFam,
              fontWeight: fontWeight,
              letterSpacing: letterSpace,
              height: 1.5,
            ),
          ),
        ]),
      ),
    );
  }
}
