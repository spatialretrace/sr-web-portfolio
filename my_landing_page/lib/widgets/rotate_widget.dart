import 'package:flutter/material.dart';

class RotateWidget extends StatefulWidget {
  const RotateWidget({
    Key key,
    this.duration = const Duration(milliseconds: 4000),
    this.curve = Curves.elasticInOut,
    @required this.child,
  }) : super(key: key);

  final Duration duration;
  final Widget child;
  final Curve curve;

  @override
  _RotateWidgetState createState() => _RotateWidgetState();
}

class _RotateWidgetState extends State<RotateWidget>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )
      ..forward()
      ..addListener(() {
        if (controller.isCompleted) {
          controller.repeat();
        }
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  /// convert 0-1 to 0-1-0
  double rotateAngle = 2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) => Transform.rotate(
        angle: rotateAngle * controller.value,
        child: child,
      ),
      child: widget.child,
    );
  }
}
