import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/models/trending.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/home_product_card.dart';

// Widget to show the products in "All brands" section in a grid view
class StaggeredAllBrands extends StatefulWidget {
  const StaggeredAllBrands({super.key, required this.products,});

  final List<Product> products;

  @override
  State<StaggeredAllBrands> createState() => _StaggeredAllBrandsState();
}

class _StaggeredAllBrandsState extends State<StaggeredAllBrands> {

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemCount: widget.products.length,
      itemBuilder: (context, index) {
        return HomeProductCard(
          product: widget.products[index],
          press: () {},
        );
      },
    );
  }
}

