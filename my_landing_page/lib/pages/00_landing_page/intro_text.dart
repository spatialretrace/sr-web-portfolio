import 'package:flutter/material.dart';
import 'package:my_landing_page/extensions/hover_extensions.dart';

bool isHovering = false;
Color hoverColor = Colors.black;

class IntroText extends StatefulWidget {
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
  State<IntroText> createState() => _IntroTextState();
}

class _IntroTextState extends State<IntroText> {
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
              color: widget.textColor1,
              fontSize: 24,
              fontFamily: widget.fontFam,
              fontWeight: widget.fontWeight,
              fontStyle: FontStyle.italic,
              // letterSpacing: letterSpace,
              height: 1,
            ),
          ),
          TextSpan(
            text: '\nFirdous Nizar',
            style: TextStyle(
              color: widget.textColor1,
              fontSize: widget.fontSize1,
              fontFamily: widget.fontFam,
              fontWeight: widget.fontWeight,
              height: 1.5,
            ),
            ),
          TextSpan(
            text: '\nand welcome to',
            style: TextStyle(
              color: widget.textColor1,
              fontSize: 24,
              fontFamily: widget.fontFam,
              fontWeight: widget.fontWeight,
              fontStyle: FontStyle.italic,
              height: 1,
            ),
          ),
          TextSpan(
            text: '\nSPATIAL',
            style: TextStyle(
              color: widget.textColor2,
              fontSize: widget.fontSize2,
              fontFamily: widget.fontFam,
              fontWeight: widget.fontWeight,
              letterSpacing: widget.letterSpace,
              height: 1.5,
            ),
          ),
          TextSpan(
            text: '\nRETRACE',
            style: TextStyle(
              color: widget.textColor2,
              fontSize: widget.fontSize2,
              fontFamily: widget.fontFam,
              fontWeight: widget.fontWeight,
              letterSpacing: widget.letterSpace,
              height: 1,
            ),
          ),
        ]),
      ),
    );
  }
}

