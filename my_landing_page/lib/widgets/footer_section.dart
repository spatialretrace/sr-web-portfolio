import 'package:flutter/material.dart';
import 'package:my_landing_page/widgets/social_media.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Text(
          'ALL DESIGNS \u00a9 FIRDOUS NIZAR',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Futura',
            fontWeight: FontWeight.w200,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'SPATIAL RETRACE, 2021',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Futura',
            fontWeight: FontWeight.w200,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SocialMedia(
          buttonColor: Colors.white,
          iconColor: Colors.black,
          buttonRowAxis: MainAxisAlignment.center,
          buttonRowAlignment: Alignment.topCenter,
          buttonRowPadding: EdgeInsets.symmetric(
            horizontal: 0,
          ),
        ),
      ],
    );
  }
}
