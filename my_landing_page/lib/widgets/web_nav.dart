import 'package:flutter/material.dart';

class WebNav extends StatefulWidget {
  const WebNav({
    Key key,
    @required this.currentPage,
    @required this.navSpacing,
    @required this.navTextColor,
    @required this.navTextElevation,
    @required this.navAlignment,
  }) : super(key: key);

  final String currentPage;
  final double navSpacing;
  final Color navTextColor;
  final double navTextElevation;
  final MainAxisAlignment navAlignment;

  @override
  _WebNavState createState() => _WebNavState();
}

class _WebNavState extends State<WebNav> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.navAlignment,
      mainAxisSize: MainAxisSize.max,
      children: [
        NavItemButton(
          navItemName: 'ABOUT',
          widget: widget,
          currentPage: widget.currentPage,
        ),
        SizedBox(
          width: widget.navSpacing,
        ),
        NavItemButton(
          navItemName: 'WORK',
          widget: widget,
          currentPage: widget.currentPage,
        ),
        SizedBox(
          width: widget.navSpacing,
        ),
        NavItemButton(
          navItemName: 'BLOG',
          widget: widget,
          currentPage: widget.currentPage,
        ),
        SizedBox(
          width: widget.navSpacing,
        ),
        NavItemButton(
          navItemName: 'CONTACT',
          widget: widget,
          currentPage: widget.currentPage,
        ),
      ],
    );
  }
}

class NavItemButton extends StatelessWidget {
  const NavItemButton({
    Key key,
    @required this.widget,
    @required this.navItemName,
    @required this.currentPage,
  }) : super(key: key);

  final WebNav widget;
  final String navItemName;
  final String currentPage;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        debugPrint("ROUTING TO $navItemName PAGE!!");
        Navigator.pushNamed(context, '/${navItemName.toLowerCase()}');
      },
      child: Text(
        navItemName,
        style: TextStyle(
          color:
              currentPage == navItemName ? Colors.amber : widget.navTextColor,
          fontFamily: 'Futura',
          fontWeight: FontWeight.w200,
          fontSize: currentPage == navItemName ? 16 : 14,
        ),
      ),
      style: TextButton.styleFrom(
        shadowColor: Colors.black,
        elevation: widget.navTextElevation,
      ),
    );
  }
}
