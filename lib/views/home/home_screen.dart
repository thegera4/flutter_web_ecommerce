import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/banner_slider_card.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/header.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          const Header(),
          Container(
            color: kgreyColor,
            child: CarouselSlider(
                items: [
                  BannerSliderCard(
                      title: "The right headphones,",
                      image: 'assets/products/banner/banner_1.png',
                      press: (){ print("clicked banner 1"); }
                  ),
                  BannerSliderCard(
                      title: "Hottest Mobiles",
                      image: 'assets/products/banner/banner_2.png',
                      press: (){ print("clicked banner 2"); }
                  ),
                  BannerSliderCard(
                      title: "Headphones",
                      image: 'assets/products/banner/banner_3.png',
                      press: (){ print("clicked banner 3"); }
                  ),
                  BannerSliderCard(
                      title: "Gaming Headphones",
                      image: 'assets/products/banner/banner_4.png',
                      press: (){ print("clicked banner 4"); }
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
                  //onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                )
            ),
          )
        ],
      ),
    );
  }
}