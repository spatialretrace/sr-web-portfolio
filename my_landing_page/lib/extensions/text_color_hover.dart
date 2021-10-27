import 'package:flutter/material.dart';

class TextColorHover extends StatefulWidget {
  final Widget child;
  TextColorHover({Key key, this.child}) : super(key: key);

  @override
  _TextColorHoverState createState() => _TextColorHoverState();
}

class _TextColorHoverState extends State<TextColorHover> {
  final nonHoverColor = Colors.white.withOpacity(0);
      // BoxDecoration(shape: BoxShape.circle, color: Colors.white.withOpacity(0));
  final hoverColor = Colors.amber;
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);

      // BoxDecoration(shape: BoxShape.circle, color: Colors.amber);
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        // color: _hovering ? hoverColor : nonHoverColor,
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
