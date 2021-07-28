import 'package:flutter/material.dart';
import 'package:my_landing_page/extensions/hover_extensions.dart';

final List<ReviewItem> reviews = [
  ReviewItem(
    reviewAvatar: ReviewAvatar(
      avatarImage: 'assets/MohAvatar.jpg',
    ),
    reviewText:
        'Firdous is more than a colleague, she is a good friend. I have been working with her for 2 years in a wide range of research, design, and teaching activities led by the IDEAS-BE research lab. I always enjoy working, brainstorming, and discussing with her. She is truly well-organized and creative at the same time.',
    reviewerName: 'Mohammad Abdalreza Zadeh',
    reviewerDesignation: 'INDI PhD Student',
    reviewerPlace: 'Montreal, CANADA',
  ),
  ReviewItem(
    reviewAvatar: ReviewAvatar(
      avatarImage: 'assets/NeethiAvatar.jpg',
    ),
    reviewText:
        'It was a pleasure to work with Firdous. She collaborated with Team Folksnfables to create wonderful illustrations for a children’s book named “Marilu does her Laundry”. In addition to being professional, creative and timely, I love her dedication to contribute the best of her skills for the project.',
    reviewerName: 'Neethi Joseph',
    reviewerDesignation: 'Co-founder @FolksnFables',
    reviewerPlace: 'Texas, USA',
  ),
  // ReviewItem(
  //   reviewAvatar: ReviewAvatar(
  //     avatarImage: 'assets/Avatar.jpg',
  //   ),
  //   reviewText: 'She\'s awesome!!',
  //   reviewerName: 'Dr. John Doe',
  //   reviewerDesignation: 'Doctor',
  //   reviewerPlace: 'Earth',
  // ),
  // ReviewItem(
  //   reviewAvatar: ReviewAvatar(
  //     avatarImage: 'assets/Avatar.jpg',
  //   ),
  //   reviewText: 'She\'s awesome!!',
  //   reviewerName: 'Dr. John Doe',
  //   reviewerDesignation: 'Doctor',
  //   reviewerPlace: 'Earth',
  // ),
];

class ReviewList extends StatelessWidget {
  const ReviewList({
    Key key,
    @required this.widgetWidth,
  }) : super(key: key);

  final double widgetWidth;
  @override
  Widget build(BuildContext context) {
    ScrollController reviewScroller = ScrollController();
    return Container(
      width: widgetWidth,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        // color: Colors.white,
        child: ListView(
          scrollDirection: Axis.horizontal,
          controller: reviewScroller,
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
    final double reviewListWidth = 400;
    final double height = MediaQuery.of(context).size.height * 0.2;
    return Container(
      width: reviewListWidth,
      child: Row(
        children: [
          Container(
            width: 0.3 * reviewListWidth,
            child: reviewAvatar,
          ),
          Container(
            width: 0.6 * reviewListWidth,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 0.8 * height,
                    child: Text(
                      reviewText,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.15,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.1 * height,
                    child: Text(
                      reviewerName,
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.1 * height,
                    child: Text(
                      reviewerDesignation,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                  ),
                  Container(
                    height: 0.1 * height,
                    child: Text(
                      reviewerPlace,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                        height: 1.5,
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
  const ReviewAvatar({Key key, @required this.avatarImage}) : super(key: key);

  final String avatarImage;

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
          image: AssetImage(avatarImage),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
