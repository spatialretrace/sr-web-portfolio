import 'package:flutter/material.dart';
import 'package:my_landing_page/extensions/hover_extensions.dart';

final List<ReviewItem> reviews = [
  ReviewItem(
    reviewAvatar: ReviewAvatar(),
    reviewText: 'She\'s awesome!!',
    reviewerName: 'Dr. John Doe',
    reviewerDesignation: 'Doctor',
    reviewerPlace: 'Earth',
  ),
  ReviewItem(
    reviewAvatar: ReviewAvatar(),
    reviewText: 'She\'s awesome!!',
    reviewerName: 'Dr. John Doe',
    reviewerDesignation: 'Doctor',
    reviewerPlace: 'Earth',
  ),
  ReviewItem(
    reviewAvatar: ReviewAvatar(),
    reviewText: 'She\'s awesome!!',
    reviewerName: 'Dr. John Doe',
    reviewerDesignation: 'Doctor',
    reviewerPlace: 'Earth',
  ),
  ReviewItem(
    reviewAvatar: ReviewAvatar(),
    reviewText: 'She\'s awesome!!',
    reviewerName: 'Dr. John Doe',
    reviewerDesignation: 'Doctor',
    reviewerPlace: 'Earth',
  ),
];

class ReviewList extends StatelessWidget {
  const ReviewList({
    Key key,
    @required this.widgetWidth,
  }) : super(key: key);

  final double widgetWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widgetWidth,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        // color: Colors.white,
        child: ListView(
          scrollDirection: Axis.horizontal,
          // controller: ScrollController(). NEED TO WORK ON THIS!!
          children: [
            for (var review in reviews) review.reviewOnHover,
          ],
        ),
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  final ReviewAvatar reviewAvatar;
  final String reviewText;
  final String reviewerName;
  final String reviewerDesignation;
  final String reviewerPlace;

  ReviewItem({
    @required this.reviewAvatar,
    @required this.reviewText,
    @required this.reviewerName,
    @required this.reviewerDesignation,
    @required this.reviewerPlace,
  });

  @override
  Widget build(BuildContext context) {
    final double reviewListWidth = 200;
    final double height = MediaQuery.of(context).size.height * 0.2;
    return Container(
      width: reviewListWidth,
      child: Row(
        children: [
          Container(
            width: 0.4 * reviewListWidth,
            child: reviewAvatar,
          ),
          Container(
            width: 0.5 * reviewListWidth,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 0.4 * height,
                    child: Text(
                      reviewText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.2 * height,
                    child: Text(
                      reviewerName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.1 * height,
                    child: Text(
                      reviewerDesignation,
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.1 * height,
                    child: Text(
                      reviewerPlace,
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ReviewAvatar extends StatelessWidget {
  const ReviewAvatar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.amber,
          width: 2,
          style: BorderStyle.solid,
        ),
        // color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/Avatar.jpg'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
