import 'package:flutter/material.dart';

class BioText extends StatelessWidget {
  const BioText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.topLeft,
        // color: Colors.white,
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text: 'Lorem ipsum dolor ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: 'sit amet',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text:
                  ', consectetur adipiscing elit. Mauris mollis massa ac lacus efficitur gravida. Sed dui neque, dictum et aliquam in, blandit eleifend arcu. Vivamus vestibulum porta risus, sit amet luctus mi consectetur ac. Vestibulum sit amet efficitur mi. Integer id volutpat tortor.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: 'Aliquam ',
              style: TextStyle(
                color: Colors.amber,
                fontStyle: FontStyle.italic,
                fontSize: 20,
              ),
            ),
            TextSpan(
              text:
                  'erat volutpat. Vivamus semper pharetra lacus, quis tempus nisl porta sed. Phasellus consequat sapien nec eros commodo aliquet. Praesent sed sem magna. Vivamus a lectus massa. Pellentesque pulvinar elit tellus, a convallis tellus venenatis sit amet.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextSpan(
              text:
                  'Proin volutpat arcu purus, nec mattis nulla pretium nec. Quisque facilisis hendrerit lacus id vestibulum. Sed sed lectus eget diam elementum rutrum ut in ligula. Vestibulum consequat ac purus vitae molestie. Mauris vel tellus magna. Maecenas fringilla ligula non dignissim tristique. Fusce id sodales odio, in cursus lorem. Nullam at egestas urna. Aenean ultricies sapien non feugiat aliquam.',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ]),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
