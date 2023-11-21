import 'package:flutter/material.dart';
import 'category_card.dart';

// Widget to group all category cards
class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryCard(
              image: "assets/products/banner/banner_1.png",
              press: (){},
              title: "JBL"
          ),
          CategoryCard(
              image: "assets/products/banner/banner_2.png",
              press: (){},
              title: "iPhone"
          ),
          CategoryCard(
              image: "assets/products/samsung/samsung1.jpeg",
              press: (){},
              title: "Samsung"
          ),
        ],
      ),
    );
  }
}
