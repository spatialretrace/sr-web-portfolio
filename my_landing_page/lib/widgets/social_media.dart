import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_landing_page/widgets/social_media_button.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key key,
    @required this.buttonColor,
    @required this.iconColor,
    @required this.buttonRowAxis,
    @required this.buttonRowAlignment,
    @required this.buttonRowPadding,
  }) : super(key: key);
  final Color buttonColor;
  final Color iconColor;
  final MainAxisAlignment buttonRowAxis;
  final Alignment buttonRowAlignment;
  final EdgeInsetsGeometry buttonRowPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: buttonRowAlignment,
      //Alignment.topLeft,
      padding: buttonRowPadding,
      // EdgeInsets.only(left: 150, top: 50),
      child: Row(
        mainAxisAlignment: buttonRowAxis,
        children: [
          SocialMediaButton(
            buttonColor: buttonColor,
            iconColor: iconColor,
            socialIcon: FontAwesomeIcons.linkedinIn,
            socialMedia: 'LinkedIn',
            socialURL: 'https://www.linkedin.com/in/spatialretrace/',
          ),
          SocialMediaButton(
            buttonColor: buttonColor,
            iconColor: iconColor,
            socialIcon: FontAwesomeIcons.instagram,
            socialMedia: 'Instagram',
            socialURL: 'https://www.instagram.com/spatialretrace/',
          ),
          SocialMediaButton(
            buttonColor: buttonColor,
            iconColor: iconColor,
            socialIcon: FontAwesomeIcons.dribbble,
            socialMedia: 'Dribbble',
            socialURL: 'https://dribbble.com/spatialretrace/',
          ),
          SocialMediaButton(
            buttonColor: buttonColor,
            iconColor: iconColor,
            socialIcon: FontAwesomeIcons.behance,
            socialMedia: 'Behance',
            socialURL: 'https://www.behance.net/spatialretrace/',
          ),
        ],
      ),
    );
  }
}
