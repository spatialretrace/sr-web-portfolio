import 'package:flutter/material.dart';
import 'package:my_landing_page/widgets/left_SR_button.dart';
import 'package:my_landing_page/pages/02_about_page/review_list.dart';

import 'package:my_landing_page/widgets/right_SR_button.dart';

class Reviews extends StatefulWidget {
  const Reviews({
    Key key,
    @required this.widgetHeight,
  }) : super(key: key);

  final double widgetHeight;
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    Color hoverButtonColor = Color(0xffFFFFFF).withOpacity(1.0);
    final double width = MediaQuery.of(context).size.width;
    return Container(
      height: widget.widgetHeight,
      child: Container(
        child: Row(
          children: [
            //REVIEW LEFT ARROW BUTTON
            Container(
              width: 0.08 * width,
              child: Container(
                // margin: EdgeInsets.only(right: 10),
                // color: Colors.white,
                child: GestureDetector(
                  child: CustomPaint(
                    size: Size(100, 200),
                    painter: LeftArrowButtonPainter(),
                  ),
                  onTap: () {
                    debugPrint('GOING LEFT IN REVIEW LIST!!');
                  },
                ),
              ),
            ),
            //REVIEW LIST SECTION
            ReviewList(
              widgetWidth: 0.48 * width,
            ),
            //REVIEW RIGHT ARROW BUTTON
            Container(
              width: 0.08 * width,
              child: Container(
                // color: Colors.white,
                child: GestureDetector(
                  child: CustomPaint(
                    size: Size(100, 200),
                    painter: RightArrowButtonPainter(
                      buttonColor: hoverButtonColor,
                    ),
                  ),
                  onTap: () {
                    debugPrint('GOING RIGHT IN REVIEW LIST!!');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
