import 'package:flutter/material.dart';

class AvatarHomeButton extends StatelessWidget {
  const AvatarHomeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        child: Container(
          // color: Colors.white,
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(
              width: 10,
              color: Colors.black,
              style: BorderStyle.solid,
            ),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/Avatar.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        onTap: () {
          debugPrint("ROUTING BACK TO LANDING PAGE!!!");
          Navigator.pushNamed(context, '/');
        },
      ),
    );
  }
}
