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
      padding: EdgeInsets.only(left: 150),
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Hi, I\'m',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: textColor1,
              fontFamily: fontFam,
              fontWeight: fontWeight,
              fontSize: fontSize1,
              letterSpacing: letterSpace,
            ),
          ),
          SizedBox(
            height: lineSpacing1,
          ),
          Text(
            'Firdous',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: textColor2,
              fontFamily: fontFam,
              fontWeight: fontWeight,
              fontSize: fontSize2,
              letterSpacing: letterSpace,
            ),
          ),
          SizedBox(
            height: lineSpacing2,
          ),
          Text(
            'Nizar',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: textColor2,
              fontFamily: fontFam,
              fontWeight: fontWeight,
              fontSize: fontSize2,
              letterSpacing: letterSpace,
            ),
          ),
        ],
      ),
    );
  }
}
