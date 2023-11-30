import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/responsive.dart';
import 'category_card.dart';

// Widget to group all category cards
class Category extends StatefulWidget {
  const Category({super.key, required this.size});

  final Size size;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          if(Responsive.isDesktop(context))
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                  image: "assets/products/banner/banner_1.png",
                  press: (){},
                  title: "JBL",
                  size: widget.size
              ),
              CategoryCard(
                  image: "assets/products/banner/banner_2.png",
                  press: (){},
                  title: "iPhone",
                  size: widget.size
              ),
              CategoryCard(
                  image: "assets/products/samsung/samsung1.jpeg",
                  press: (){},
                  title: "Samsung",
                  size: widget.size
              ),
            ],
          ),
          if(!Responsive.isDesktop(context))
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CategoryCard(
                    image: "assets/products/banner/banner_1.png",
                    press: (){},
                    title: "JBL",
                    size: widget.size
                ),
                CategoryCard(
                    image: "assets/products/banner/banner_2.png",
                    press: (){},
                    title: "iPhone",
                    size: widget.size
                ),
                CategoryCard(
                    image: "assets/products/samsung/samsung1.jpeg",
                    press: (){},
                    title: "Samsung",
                    size: widget.size
                ),
              ],
            ),
        ],
      ),
    );
  }
}
