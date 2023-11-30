import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'banner_slider_card.dart';

// Widget for the hero banner (slider) to group all banner slider cards
class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key, required this.size});

  final Size size;

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {

  @override
  Widget build(BuildContext context) {

    int index = 0;

    return Column(
      children: [
        CarouselSlider(
              items: [
                BannerSliderCard(
                    title: "The right headphones,",
                    image: 'assets/products/banner/banner_1.png',
                    press: (){},
                    size: widget.size,
                ),
                BannerSliderCard(
                    title: "Hottest Mobiles",
                    image: 'assets/products/banner/banner_2.png',
                    press: (){},
                    size: widget.size,
                ),
                BannerSliderCard(
                    title: "Headphones",
                    image: 'assets/products/banner/banner_3.png',
                    press: (){},
                    size: widget.size,
                ),
                BannerSliderCard(
                    title: "Gaming Headphones",
                    image: 'assets/products/banner/banner_4.png',
                    press: (){},
                    size: widget.size,
                ),
              ],
              options: CarouselOptions(
                height: widget.size.width == 300 ? 250 :
                        widget.size.width >= 500 ? 500 : 300,
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
