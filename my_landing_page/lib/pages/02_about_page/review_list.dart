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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        // color: Colors.white,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            for (var review in reviews) review.tileProjectOnHover,
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
    return Container(
      width: 200,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child:
                // SizedBox(
                //   width: 100,
                //   height: 100,
                //   child:
                reviewAvatar,
            // ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      reviewText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      reviewerName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      reviewerDesignation,
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      reviewerPlace,
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
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
