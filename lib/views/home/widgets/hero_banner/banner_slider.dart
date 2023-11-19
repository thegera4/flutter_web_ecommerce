import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'banner_slider_card.dart';

// Widget for the hero banner (slider)
class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
              items: [
                BannerSliderCard(
                    title: "The right headphones,",
                    image: 'assets/products/banner/banner_1.png',
                    press: (){}
                ),
                BannerSliderCard(
                    title: "Hottest Mobiles",
                    image: 'assets/products/banner/banner_2.png',
                    press: (){}
                ),
                BannerSliderCard(
                    title: "Headphones",
                    image: 'assets/products/banner/banner_3.png',
                    press: (){}
                ),
                BannerSliderCard(
                    title: "Gaming Headphones",
                    image: 'assets/products/banner/banner_4.png',
                    press: (){}
                ),
              ],
              options: CarouselOptions(
                height: 500,
                aspectRatio: 16/9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (int p, carouselPageChangedReason) {
                  setState(() {
                    index = p;
                  });
                },
                scrollDirection: Axis.horizontal,
              )
          ),
        DotsIndicator(
        dotsCount: 4,
        position: index.toDouble(),
        decorator: DotsDecorator(
        activeColor: kPrimaryColor.withOpacity(0.5),
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
        ),
        )),
      ],
    );
  }
}
