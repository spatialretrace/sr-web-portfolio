import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/03_about_page/bio_text.dart';
import 'package:my_landing_page/widgets/intro_video.dart';

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
            Container(
              width: 680,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/AboutPhoto.jpg'),
                  fit: BoxFit.fitWidth,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            //BIO TEXT SECTION
            BioText(),
            //TODO NEED TO ADD SCROLL BAR FOR BIO TEXT
          ],
        ),
      ),
    );
  }
}
