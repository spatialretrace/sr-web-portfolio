import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/02_about_page/bio_text.dart';
import 'package:my_landing_page/widgets/intro_video.dart';

class IntroVideoBio extends StatelessWidget {
  const IntroVideoBio({
    Key key,
    @required this.widgetFlex,
  }) : super(key: key);
  final int widgetFlex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widgetFlex,
      child: Container(
        padding: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          children: [
            //INTRO VIDEO SECTION
            IntroVideo(),
            //BIO TEXT SECTION
            BioText(),
          ],
        ),
      ),
    );
  }
}
