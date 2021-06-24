import 'package:flutter/material.dart';

class NavPortfolio extends StatelessWidget {
  const NavPortfolio({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: width * 0.6,
      height: 20,
    );
  }
}
