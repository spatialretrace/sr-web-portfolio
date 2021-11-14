import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        color: Colors.amber,
        onPressed: () {
          setState(() {
            isVisible = !isVisible;
            debugPrint("Image is now $isVisible!!!");
          });
        },
        child: Visibility(
          visible: isVisible,
          child: Image(
            width: 200,
            height: 400,
            image: AssetImage('assets/Firdous_Avatar.png'),
          ),
        ),
      ),
    );
  }
}
