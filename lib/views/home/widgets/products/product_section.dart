import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/category.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/trending.dart';
import '../../../../constants.dart';

// Widget to group all products section (categories, xxx, xxx, etc)
class ProductSection extends StatefulWidget {
  const ProductSection({super.key});

  @override
  State<ProductSection> createState() => _ProductSectionState();
}

class _ProductSectionState extends State<ProductSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(maxWidth: kMaxWidth),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Category(),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: kSecondaryColor,
                      width: 3,
                    ),
                  ),
                ),
                child: const Text(
                  "Trending",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600,),
                ),
              ),
              const SizedBox(height: 20),
              const Trending(),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ],
    );
  }
}
