import 'package:flutter/material.dart';

class WebNav extends StatelessWidget {
  const WebNav({
    Key key,
    @required this.navSpacing,
    @required this.navTextColor,
    @required this.navTextElevation,
    @required this.navAlignment,
  }) : super(key: key);

  final double navSpacing;
  final Color navTextColor;
  final double navTextElevation;
  final MainAxisAlignment navAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: navAlignment,
      mainAxisSize: MainAxisSize.max,
      children: [
        TextButton(
          onPressed: () {
            debugPrint("ROUTING TO ABOUT PAGE!!");
            Navigator.pushNamed(context, '/about');
          },
          child: Text(
            'ABOUT',
            style: TextStyle(
              color: navTextColor,
              fontFamily: 'Futura',
              fontWeight: FontWeight.w200,
            ),
          ),
          style: TextButton.styleFrom(
            shadowColor: Colors.black,
            elevation: navTextElevation,
          ),
        ),
        SizedBox(
          width: navSpacing,
        ),
        TextButton(
          onPressed: () {
            debugPrint("ROUTING TO WORK PAGE!!");
            Navigator.pushNamed(context, '/work');
          },
          child: Text(
            'WORK',
            style: TextStyle(
              color: navTextColor,
              fontFamily: 'Futura',
              fontWeight: FontWeight.w100,
            ),
          ),
          style: TextButton.styleFrom(
            shadowColor: Colors.black,
            elevation: navTextElevation,
          ),
        ),
        SizedBox(
          width: navSpacing,
        ),
        TextButton(
          onPressed: () {
            debugPrint("ROUTING TO CONTACT PAGE!!");
            Navigator.pushNamed(context, '/contact');
          },
          child: Text(
            'CONTACT',
            style: TextStyle(
              color: navTextColor,
              fontFamily: 'Futura',
              fontWeight: FontWeight.w200,
            ),
          ),
          style: TextButton.styleFrom(
            shadowColor: Colors.black,
            elevation: navTextElevation,
          ),
        ),
      ],
    );
  }
}
