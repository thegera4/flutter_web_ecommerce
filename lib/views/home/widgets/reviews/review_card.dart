import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';

// Widget to create a review card for the home screen
class ReviewCard extends StatefulWidget {
  const ReviewCard({
    super.key,
    required this.image,
    required this.press,
    required this.title,
    required this.review,
    required this.size,
  });

  final String image, title, review;
  final VoidCallback press;
  final Size size;

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        width: widget.size.width <= 770 ? widget.size.width :
               widget.size.width >= 975 ? 300 : 200,
        decoration: BoxDecoration(
          color: kgreyColor,
          boxShadow: [ if (isHover) kDefaultShadow, ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                widget.image,
                height: 100,
                width: 100,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              widget.title,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                widget.review,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16,),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
