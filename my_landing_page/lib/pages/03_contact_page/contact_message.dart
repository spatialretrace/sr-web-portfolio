import 'package:flutter/material.dart';

class ContactMessage extends StatelessWidget {
  const ContactMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double columnWidth = 60;
    // final double width = MediaQuery.of(context).size.width;
    return Expanded(
      flex: 3,
      child: Container(
        child: Stack(
          children: [
            Container(
              // margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      // height: 80,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.topLeft,
                          image: AssetImage('Left_SRArrowButton.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage('Right_SRArrowButton.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: Text(
                    'Let\'s Design Together!',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 36,
                      fontFamily: 'Futura',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                    right: columnWidth,
                    left: columnWidth,
                  ),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'I’m always looking for amazing ideas and wonderful people to work with. Go ahead and drop me a message and I should get back to you within 2-3 business days.',
                          // 'You can also check out my ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Futura',
                            height: 1.5,
                          ),
                        ),
                        // TextSpan(
                        //   text: 'FAQ.',
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 16,
                        //     fontFamily: 'Futura',
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: columnWidth),
                  child: Text(
                    'Talk soon!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Futura',
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(right: columnWidth - 20),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      image: AssetImage('FN_Sign.png'),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
