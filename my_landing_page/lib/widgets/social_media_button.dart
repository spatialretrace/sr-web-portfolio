import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key key,
    @required this.buttonColor,
    @required this.iconColor,
    @required this.socialMedia,
    @required this.socialIcon,
    @required this.socialURL,
  }) : super(key: key);
  final String socialMedia;
  final IconData socialIcon;
  final String socialURL;
  final Color buttonColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: RawMaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        constraints: BoxConstraints(maxHeight: 50, maxWidth: 50),
        elevation: 2.0,
        fillColor: buttonColor,
        child: FaIcon(
          socialIcon,
          size: 20,
          color: iconColor,
        ),
        onPressed: () {
          debugPrint("TAKE ME TO $socialMedia!");
          launch(socialURL);
        },
        padding: EdgeInsets.all(15.0),
        shape: CircleBorder(),
      ),
    );
  }
}
