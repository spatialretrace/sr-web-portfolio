import 'package:flutter/material.dart';

class NavigatorHover extends StatefulWidget {
  final Widget child;
  NavigatorHover({Key key, this.child}) : super(key: key);

  @override
  _NavigatorHoverState createState() => _NavigatorHoverState();
}

class _NavigatorHoverState extends State<NavigatorHover> {
  final nonHoverDecoration =
      BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(0));
  final hoverDecoration =
      BoxDecoration(shape: BoxShape.circle, color: Colors.amber);
  // final hoverColor = Colors.transparent;
  // final nonHoverColor = Colors.amber.withAlpha(10);
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    // debugPrint('CURRENT WIDGET IS: ${widget.key}');
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        // width: 30,
        // height: 30,
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        foregroundDecoration: _hovering ? hoverDecoration : nonHoverDecoration,
        // foredecoration: ,
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    // debugPrint('Hovering on portfolio nav indicator!!');
    setState(() {
      _hovering = hovering;
    });
  }
}
