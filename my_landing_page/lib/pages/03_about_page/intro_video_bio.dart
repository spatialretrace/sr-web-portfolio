import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_landing_page/pages/03_about_page/bio_text.dart';
import 'package:my_landing_page/widgets/intro_video.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroVideoBio extends StatelessWidget {
  const IntroVideoBio({
    Key key,
    @required this.widgetHeight,
  }) : super(key: key);
  final double widgetHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widgetHeight,
      child: Container(
        padding: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          children: [
            //INTRO VIDEO SECTION
            // IntroVideo(), //TODO NEED TO ATTACH FIRST DRAFT OF INTRO VIDEO
            //ABOUT PHOTO (PLACEHOLDER FOR INTRO VIDEO)
            Stack(children: [
              Container(
                width: 640,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/AboutPhoto.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 30,
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: '\u00a9 Photo by ',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Futura',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  TextSpan(
                    text: 'Omar Ortiz Meraz',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch('http://www.ortizmeraz.com/');
                      },
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Futura',
                      fontWeight: FontWeight.w100,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text: ', 2021',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Futura',
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ])),
              ),
            ]),
            //BIO TEXT SECTION
            BioText(),
            //TODO NEED TO ADD SCROLL BAR FOR BIO TEXT
          ],
        ),
      ),
    );
  }
}
