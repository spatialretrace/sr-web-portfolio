import 'package:flutter/material.dart';

class ReviewHover extends StatefulWidget {
  final Widget child;
  ReviewHover({Key key, this.child}) : super(key: key);

  @override
  _ReviewHoverState createState() => _ReviewHoverState();
}

class _ReviewHoverState extends State<ReviewHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);
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
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}
