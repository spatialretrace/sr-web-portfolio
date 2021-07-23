import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMessage extends StatelessWidget {
  const ContactMessage({
    Key key,
    @required this.widgetHeight,
  }) : super(key: key);

  final double widgetHeight;
  @override
  Widget build(BuildContext context) {
    final double columnWidth = 60;
    double contactMessageFontSize = 20;
    // final double width = MediaQuery.of(context).size.width;
    return Container(
      height: widgetHeight,
      child: Container(
        height: 500,
        child: Stack(
          children: [
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 130,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.topLeft,
                          image: AssetImage('assets/Left_SRArrowButton.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 130,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage('assets/Right_SRArrowButton.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Text(
                    '\n\n\nLet\'s Design Together!',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 36,
                      fontFamily: 'Futura',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    // bottom: 20,
                    right: columnWidth + 20,
                    left: columnWidth + 20,
                  ),
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '\n\nI’m always looking for amazing ideas and wonderful people to work with.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: contactMessageFontSize,
                            fontFamily: 'Futura',
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    // top: 20,
                    // bottom: 20,
                    right: columnWidth + 20,
                    left: columnWidth + 20,
                  ),
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: '\n\n\nGo ahead and ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: contactMessageFontSize,
                          fontFamily: 'Futura',
                          height: 1.5,
                        ),
                      ),
                      TextSpan(
                        text: 'drop me an email at ',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: contactMessageFontSize,
                          fontFamily: 'Futura',
                          height: 1.5,
                          // decoration: TextDecoration.underline,
                          // decorationThickness: 3,
                        ),
                      ),
                      WidgetSpan(
                        child: Icon(
                          Icons.email_outlined,
                          size: contactMessageFontSize,
                          color: Colors.amber,
                        ),
                      ),
                      TextSpan(
                        text: 'ar.firdous.nizar@gmail.com',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch('mailto:ar.firdous.nizar@gmail.com');
                          },
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: contactMessageFontSize,
                          fontFamily: 'Futura',
                          height: 1.5,
                          decoration: TextDecoration.underline,
                          // decorationThickness: 3,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' and \n\n             I will reach out to you within ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: contactMessageFontSize,
                          fontFamily: 'Futura',
                          height: 1.5,
                        ),
                      ),
                      TextSpan(
                        text: '2-3',
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: contactMessageFontSize,
                          fontFamily: 'Futura',
                          height: 1.5,
                        ),
                      ),
                      TextSpan(
                        text: ' business days.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: contactMessageFontSize,
                          fontFamily: 'Futura',
                          height: 1.5,
                        ),
                      ),
                    ]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, right: columnWidth + 20),
                  child: Text(
                    'Talk soon!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Futura',
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(right: columnWidth),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      image: AssetImage('assets/FN_Sign.png'),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
