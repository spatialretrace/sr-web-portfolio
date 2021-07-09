import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_landing_page/widgets/right_SR_button.dart';
import 'package:my_landing_page/widgets/left_SR_button.dart';

class CarouselDemo extends StatefulWidget {
  CarouselDemo({
    Key key,
    @required this.widgetList,
  }) : super(key: key);

  final List<Widget> widgetList;

  @override
  _CarouselDemoState createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  int _current = 0;
  final CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 760,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 70,
                child: GestureDetector(
                  child: CustomPaint(
                    size: Size(100, 200),
                    painter: LeftArrowButtonPainter(),
                  ),
                  onTap: () {
                    debugPrint('GOING TO PREVIOUS SLIDER!!');
                    buttonCarouselController.previousPage();
                  },
                ),
              ),
              // SizedBox(width: 30),
              CarouselSlider(
                items: widget.widgetList
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
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
              ),
              // SizedBox(width: 30),
              Container(
                height: 150,
                width: 70,
                child: GestureDetector(
                  child: CustomPaint(
                    size: Size(100, 200),
                    painter: RightArrowButtonPainter(
                      buttonColor: Colors.white,
                    ),
                  ),
                  onTap: () {
                    debugPrint('GOING TO NEXT SLIDER!!');
                    buttonCarouselController.nextPage();
                  },
                ),
              ),
            ],
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

// class CarouselWithIndicatorDemo extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _CarouselWithIndicatorState();
//   }
// }

// class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
//   int _current = 0;
//   final CarouselController _controller = CarouselController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Carousel with indicator controller demo')),
//       body: Column(children: [
//         Expanded(
//           child: CarouselSlider(
//             items: imageSliders,
//             carouselController: _controller,
//             options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 2.0,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _current = index;
//                   });
//                 }),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: imgList.asMap().entries.map((entry) {
//             return GestureDetector(
//               onTap: () => _controller.animateToPage(entry.key),
//               child: Container(
//                 width: 12.0,
//                 height: 12.0,
//                 margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//                 decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: (Theme.of(context).brightness == Brightness.dark
//                             ? Colors.white
//                             : Colors.black)
//                         .withOpacity(_current == entry.key ? 0.9 : 0.4)),
//               ),
//             );
//           }).toList(),
//         ),
//       ]),
//     );
//   }
// }
