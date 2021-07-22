import 'package:flutter/material.dart';

class BackHomeButton extends StatelessWidget {
  const BackHomeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      left: 20,
      child: RawMaterialButton(
        onPressed: () {
          debugPrint('TAKE ME BACK HOME!!!');
          Navigator.pushNamed(context, '/');
        },
        constraints: BoxConstraints(minWidth: 70, minHeight: 70),
        shape: CircleBorder(),
        child: Row(
          children: [
            Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 30,
            ),
            // SizedBox(
            //   width: 2,
            // ),
            Icon(
              Icons.home,
              color: Colors.black,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
