import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/models/trending.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/trending_card.dart';

// Widget to show the trending products section in a grid view
class Trending extends StatefulWidget {
  const Trending({super.key,});

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(trendingProducts.length, (index) {
          return TrendingCard(
            product: trendingProducts[index],
            press: () {},
          );
        })
    );
  }
}
