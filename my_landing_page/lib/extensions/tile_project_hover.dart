// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_landing_page/pages/01_work_page/portfolio_project_gallery.dart';

class TileProjectHover extends StatefulWidget {
  final Widget child;
  TileProjectHover({Key key, this.child}) : super(key: key);

  @override
  _TileProjectHoverState createState() => _TileProjectHoverState();
}

class _TileProjectHoverState extends State<TileProjectHover> {
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
        child: Stack(children: [
          widget.child,
          SizedBox(
              width: 335,
              height: 335,
              child: Center(
                  child: Container(
                      alignment: Alignment.center,
                      child: tileProjectText(_hovering))))
        ]),
        transform: _hovering ? hoverTransform : nonHoverTransform,
        foregroundDecoration: _hovering
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.6),
                border: Border.all(
                    color: Colors.amber, style: BorderStyle.solid, width: 3),
              )
            : BoxDecoration(),
        // color: _hovering ? hoverColor : nonHoverColor,
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}

tileProjectText(bool flag) {
  // debugPrint(
  //     'HOVER FLAG IS ${flag.toString().toUpperCase()}, ${projectTitle.toUpperCase()} TEXT IS NOW DISPLAYED !!!');
  return (flag
      ? Text(projectTitle[0],
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Futura',
            fontWeight: FontWeight.w800,
          ))
      : Text(''));
}
