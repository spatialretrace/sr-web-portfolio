import 'package:flutter/material.dart';
import 'package:my_landing_page/widgets/left_SR_button.dart';
import 'package:my_landing_page/pages/02_about_page/review_list.dart';

import 'package:my_landing_page/widgets/right_SR_button.dart';

class Reviews extends StatefulWidget {
  const Reviews({
    Key key,
  }) : super(key: key);

  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    Color hoverButtonColor = Color(0xffFFFFFF).withOpacity(1.0);
    return Expanded(
      flex: 2,
      child: Container(
        child: Row(
          children: [
            //REVIEW LEFT ARROW BUTTON
            Expanded(
              flex: 1,
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
            ReviewList(),
            //REVIEW RIGHT ARROW BUTTON
            Expanded(
              flex: 1,
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
