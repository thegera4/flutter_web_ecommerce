import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/hero_banner/banner_slider.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/header/header.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/product_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kWhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            BannerSlider(),
            ProductSection(),
          ],
        ),
      ),
    );
  }
}