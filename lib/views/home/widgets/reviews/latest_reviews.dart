import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/responsive.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/reviews/review_card.dart';

// Widget to group review cards
class LatestReviews extends StatefulWidget {
  const LatestReviews({super.key, required this.size});

  final Size size;

  @override
  State<LatestReviews> createState() => _LatestReviewsState();
}

class _LatestReviewsState extends State<LatestReviews> {

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        if(Responsive.isDesktop(context))
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReviewCard(
              image: "assets/products/users/user-1.png",
              press: (){},
              title: "Alexa",
              review: "I love this product. It's really cool. I would buy it "
                  "again, specially for this price plus the quality you get, "
                  "and as for the shop, well it's amazing, they have "
                  "everything you need and more.",
              size: widget.size,
            ),
            ReviewCard(
              image: "assets/products/users/user-2.png",
              press: (){},
              title: "Jack",
              review: "Search no more, this is your one stop shop for all your "
                  "needs. There are so many products to choose from and there's"
                  " always a discount on something.",
              size: widget.size,
            ),
            ReviewCard(
              image: "assets/products/users/user-3.png",
              press: (){},
              title: "Erin",
              review: "Service is great, I had a problem with my order and they"
                  " fixed it right away. I would recommend this store to anyone,"
                  " specially if you are looking for a good deal.",
              size: widget.size,
            ),
          ],
        ),
        if(!Responsive.isDesktop(context))
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReviewCard(
                image: "assets/products/users/user-1.png",
                press: (){},
                title: "Alexa",
                review: "I love this product. It's really cool. I would buy it "
                    "again, specially for this price plus the quality you get, "
                    "and as for the shop, well it's amazing, they have "
                    "everything you need and more.",
                size: widget.size,
              ),
              ReviewCard(
                image: "assets/products/users/user-2.png",
                press: (){},
                title: "Jack",
                review: "Search no more, this is your one stop shop for all your "
                    "needs. There are so many products to choose from and there's"
                    " always a discount on something.",
                size: widget.size,
              ),
              ReviewCard(
                image: "assets/products/users/user-3.png",
                press: (){},
                title: "Erin",
                review: "Service is great, I had a problem with my order and they"
                    " fixed it right away. I would recommend this store to anyone,"
                    " specially if you are looking for a good deal.",
                size: widget.size,
              ),
            ],
          ),
      ],
    );
  }
}
