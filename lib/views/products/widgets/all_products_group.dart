import "package:flutter/material.dart";
import "package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart";
import "../../../models/trending.dart";
import "../../../responsive.dart";
import "../../home/widgets/products/home_product_card.dart";
import "../../home/widgets/products/mobile/mobile_home_product_card.dart";

class AllProductsGroup extends StatefulWidget {
  const AllProductsGroup({super.key, required this.size});

  final Size size;

  @override
  State<AllProductsGroup> createState() => _AllProductsGroupState();
}

class _AllProductsGroupState extends State<AllProductsGroup> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: StaggeredGrid.count(
            crossAxisCount: widget.size.width > 1020 ? 4 : 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(allProducts.length, (index) {
              if(Responsive.isDesktop(context)) {
                return HomeProductCard(
                  product: allProducts[index],
                  press: () {},
                );
              }
              return MobileHomeProductCard(
                product: allProducts[index],
                press: () {},
              );
            })
        ),
      ),
    );
  }
}
