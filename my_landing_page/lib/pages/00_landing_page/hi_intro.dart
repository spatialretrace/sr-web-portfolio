import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/00_landing_page/intro_text.dart';
import 'package:my_landing_page/widgets/social_media.dart';
import 'package:my_landing_page/widgets/web_nav.dart';
import 'package:url_launcher/url_launcher.dart';

class HiIntro extends StatelessWidget {
  const HiIntro({
    Key key,
    @required this.introTextAlign,
  }) : super(key: key);

  final TextAlign introTextAlign;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    double photoRightsFontSize = 18;
    return Container(
      child: Column(
        children: [
          Container(
            width: width,
            height: 0.16 * height,
            child: Container(
              padding: EdgeInsets.only(top: 100),
              child: WebNav(
                navAlignment: MainAxisAlignment.start,
                navTextColor: Colors.white,
                navTextElevation: 3.0,
                navSpacing: 40,
                currentPage: 'LANDING',
              ),
            ),
          ),
          Container(
            width: width,
            height: 0.5 * height,
            child: IntroText(
              fontFam: 'Futura',
              textColor1: Colors.black,
              textColor2: Colors.white,
              lineSpacing1: 14,
              lineSpacing2: 10,
              fontSize1: width < 1280 ? 30 : width * 0.02,
              fontSize2: 64,
              fontWeight: FontWeight.w600,
              letterSpace: 2,
              introTextAlign: introTextAlign,
            ),
          ),
          Container(
            width: width,
            height: 0.3 * height,
            child: SocialMedia(
              buttonColor: Colors.black,
              iconColor: Colors.amber,
              buttonRowAxis: MainAxisAlignment.start,
              buttonRowAlignment: Alignment.topLeft,
              buttonRowPadding: EdgeInsets.only(top: 50),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            // padding: EdgeInsets.all(10),
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: '\u00a9 Photo by ',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.w100,
                  fontSize: photoRightsFontSize,
                ),
              ),
              TextSpan(
                text: 'Anna Minzhulina',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch('https://www.annaminzhulina.com/about');
                  },
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.w100,
                  fontSize: photoRightsFontSize,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: ', 2021',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Futura',
                  fontSize: photoRightsFontSize,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ])),
          )
        ],
      ),
    );
  }
}
