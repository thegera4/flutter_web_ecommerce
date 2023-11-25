import 'package:flutter/material.dart';
import 'package:flutter_web_ecommerce/models/trending.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_web_ecommerce/views/home/widgets/products/home_product_card.dart';

// Widget to show the trending products section in a grid view
class IphoneProducts extends StatefulWidget {
  const IphoneProducts({super.key,});

  @override
  State<IphoneProducts> createState() => _IphoneProductsState();
}

class _IphoneProductsState extends State<IphoneProducts> {

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(iPhoneProducts.length, (index) {
          return HomeProductCard(
            product: iPhoneProducts[index],
            press: () {},
          );
        })
    );
  }
}

