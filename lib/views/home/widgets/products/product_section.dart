import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/all_brands.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/category.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/products_section_title.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/trending.dart';
import '../../../../constants.dart';

// Widget to group all home products sections (categories,trending,reviews,etc)
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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              ProductsSectionTitle(title: "Brands"),
              Category(),
              SizedBox(height: 20),
              ProductsSectionTitle(title: "Trending"),
              SizedBox(height: 20),
              Trending(),
              SizedBox(height: 20),
              ProductsSectionTitle(title: "All Brands"),
              SizedBox(height: 20),
              AllBrands(),
              SizedBox(height: 100),
            ],
          ),
        ),
      ],
    );
  }
}
