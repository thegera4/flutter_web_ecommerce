import 'package:flutter/material.dart';
import '../../../constants.dart';

class BannerSliderCard extends StatelessWidget {
  const BannerSliderCard({
    super.key,
    required this.title,
    required this.image,
    required this.press
  });

  final String title, image;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      color: kgreyColor,
      child: Row(
        children: [
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "$title made for you",
                          textScaleFactor: 2.5,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                      InkWell(
                        onTap: press,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 15,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                          ),
                          child: const Text(
                            "Shop now",
                            style: TextStyle(
                              color: kWhiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
              ),
              Expanded(child: Image.asset(image))
        ],
      ),
    );
  }
}
