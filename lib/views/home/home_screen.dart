import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/constants.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/footer/footer.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/header/menu_item.dart';
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

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhiteColor,
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Center(
                child: Text(
                          "Shoptastic!",
                          textScaleFactor: 1.6,
                          style: TextStyle(
                            color: kDarkblueColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  MenuItems(
                    isActive: true,
                    title: "Home",
                    press: () {},
                  ),
                  const SizedBox(height: 10,),
                  MenuItems(
                    title: "Products",
                    press: () {},
                  ),
                  const SizedBox(height: 10,),
                  MenuItems(
                    title: "Category",
                    press: () {},
                  ),
                  const SizedBox(height: 10,),
                  MenuItems(
                    title: "Contact Us",
                    press: () {},
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(size: size),
            BannerSlider(size: size),
            ProductSection(size: size),
            Footer(size: size)
          ],
        ),
      ),
    );
  }
}