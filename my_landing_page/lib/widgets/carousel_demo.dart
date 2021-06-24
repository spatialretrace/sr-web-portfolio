import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselDemo extends StatelessWidget {
  CarouselDemo({
    Key key,
    @required this.widgetList,
  }) : super(key: key);

  final List<Widget> widgetList;
  final CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          items: widgetList
              .map((item) => Container(
                    child: Center(
                      child: item,
                    ),
                    // color: Colors.amber,
                  ))
              .toList(),
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 8),
            enlargeCenterPage: true,
            viewportFraction: 1,
            // aspectRatio: 2.0,
            initialPage: 0,
          ),
        ),
        // ElevatedButton(
        //   onPressed: () {
        //     buttonCarouselController.nextPage(
        //         duration: Duration(milliseconds: 300), curve: Curves.linear);
        //   },
        //   child: Text('>>>'),
        // ),
      ],
    );
  }
}
