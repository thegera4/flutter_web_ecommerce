import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/models/trending.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_web_ecommerce/responsive.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/home_product_card.dart';

import 'mobile/mobile_home_product_card.dart';

// Widget to show the trending products section in a grid view
class Trending extends StatefulWidget {
  const Trending({super.key, required this.size});

  final Size size;

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: StaggeredGrid.count(
          crossAxisCount: widget.size.width > 770 ? 4 : 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(trendingProducts.length, (index) {
            if(Responsive.isDesktop(context)) {
              return HomeProductCard(
                product: trendingProducts[index],
                press: () {},
              );
            }
            return MobileHomeProductCard(
                product: trendingProducts[index],
                press: () {},
            );
          })
      ),
    );
  }
}
