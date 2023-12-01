import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/all_brands.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/category.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/products_section_title.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/trending.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/reviews/latest_reviews.dart';
import '../../../../constants.dart';

// Widget to group all home products sections (categories,trending,reviews,etc)
class ProductSection extends StatefulWidget {
  const ProductSection({super.key, required this.size});

  final Size size;

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
              const SizedBox(height: 20),
              const ProductsSectionTitle(title: "Brands"),
              Category(size: widget.size),
              const SizedBox(height: 20),
              const ProductsSectionTitle(title: "Trending"),
              const SizedBox(height: 20),
              Trending(size: widget.size),
              const SizedBox(height: 20),
              const ProductsSectionTitle(title: "All Brands"),
              const SizedBox(height: 20),
              AllBrands(size: widget.size),
              const SizedBox(height: 40),
              const ProductsSectionTitle(title: "Latest Reviews"),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: LatestReviews(size: widget.size)
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ],
    );
  }
}
