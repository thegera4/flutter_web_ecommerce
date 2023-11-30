import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';

// Widget for each banner slider card (hero banner)
class BannerSliderCard extends StatelessWidget {
  const BannerSliderCard({
    super.key,
    required this.title,
    required this.image,
    required this.press,
    required this.size,
  });

  final String title, image;
  final VoidCallback press;
  final Size size;

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
                      AutoSizeText(
                          "$title made for you",
                          textAlign: TextAlign.center,
                          minFontSize: 16,
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: size.width >= 500 ? 28 : 18,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                      const SizedBox(height: 20,),
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
                          child: Text(
                            "Shop now",
                            style: TextStyle(
                              fontSize: size.width >= 500 ? 18 : 12,
                              color: kWhiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],

                  ),
              ),
              Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                            image,
                            height: size.width >= 500 ? 400 : 200,
                            width: size.width >= 500 ? 400 : 200,
                            fit: BoxFit.contain,
                        )
                      ]
                  )
              )
        ],
      ),
    );
  }
}
