import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/00_landing_page/intro_text.dart';
import 'package:my_landing_page/widgets/social_media.dart';
import 'package:my_landing_page/widgets/web_nav.dart';

class HiIntro extends StatelessWidget {
  const HiIntro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(left: 150, top: 100),
              child: WebNav(
                navAlignment: MainAxisAlignment.start,
                navTextColor: Colors.white,
                navTextElevation: 3.0,
                navSpacing: 40,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: IntroText(
                fontFam: 'Futura',
                textColor1: Colors.black,
                textColor2: Colors.white,
                lineSpacing1: 14,
                lineSpacing2: 10,
                fontSize1: width < 1280 ? 30 : width * 0.02,
                fontSize2: 64,
                fontWeight: FontWeight.w100,
                letterSpace: 2),
          ),
          Expanded(
            flex: 2,
            child: SocialMedia(
              buttonColor: Colors.black,
              iconColor: Colors.amber,
              buttonRowAxis: MainAxisAlignment.start,
              buttonRowAlignment: Alignment.topLeft,
              buttonRowPadding: EdgeInsets.only(left: 150, top: 50),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(10),
            child: Text('© 2021, Built with Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                )),
          )
        ],
      ),
    );
  }
}
