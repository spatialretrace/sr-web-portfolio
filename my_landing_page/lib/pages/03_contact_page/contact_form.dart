import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        child: Stack(
          children: [
            Column(
              children: [
                //NAME FIELD
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 60,
                    left: 60,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: 'Name*',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Futura',
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                //EMAIL FIELD
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 60,
                    left: 60,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email*',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Futura',
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                //SUBJETC FIELD
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 60,
                    left: 60,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    // maxLength: 150,
                    decoration: InputDecoration(
                      hintText: 'Subject*',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Futura',
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                //MESSAGE FIELD
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 60,
                    left: 60,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 3,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextField(
                    maxLines: 7,
                    decoration: InputDecoration(
                      hintText: 'Message*',
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Futura',
                      ),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            //SUBMIT BUTTON
            Positioned(
              right: 80,
              bottom: 60,
              child: FloatingActionButton.extended(
                onPressed: () {
                  debugPrint('MESSAGE SUBMITTED!!!');
                },
                backgroundColor: Colors.amber,
                label: Text(
                  'SUBMIT',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Futura',
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
